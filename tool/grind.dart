import 'package:grinder/grinder.dart';
import 'dart:io';
import 'package:path/path.dart' as path;

main(args) => grind(args);

final apps = [
  '.',
  'lib_lego',
  'lib_locale',
  'lib_di',
  'module_auth',
  'module_fit',
  'app_motim_homepage',
  'app_motim_fit',
  'app_kodesmil_legobook',
  'app_fotosmil_homepage',
];

@Task('Get packages')
Future<void> pubget({String workingDirectory}) async {
  await _runProcess(
    'flutter',
    ['pub', 'get', if (workingDirectory != null) workingDirectory],
  );
}

@Task('Get all packages')
Future<void> pubgetall() async {
  apps.forEach((app) async => await pubget(workingDirectory: app));
}

@Task('Upgrade packages')
Future<void> pubupgrade({String workingDirectory}) async {
  await _runProcess(
    'flutter',
    ['pub', 'upgrade', if (workingDirectory != null) workingDirectory],
  );
}

@Task('Upgrade all packages')
Future<void> pubupgradeall() async {
  apps.forEach((app) async => await pubupgrade(workingDirectory: app));
}

@Task('Format dart files')
Future<void> format({String workingDirectory = '.'}) async {
  await _runProcess('flutter', ['format', workingDirectory]);
}

@Task('Format all dart files')
Future<void> formatall() async {
  apps.forEach((app) async => await format(workingDirectory: app));
}

@Task('Clean dart files')
Future<void> clean({String workingDirectory = '.'}) async {
  _runProcess('flutter', ['clean', workingDirectory]);
}

@Task('Clean all dart files')
Future<void> cleanall() async {
  await Future.forEach(
    apps,
    (app) async => await clean(workingDirectory: app),
  );
}

Future<void> runner({String workingDirectory = '.'}) async {
  await _runProcess(
    'flutter',
    [
      'packages',
      'pub',
      'run',
      'build_runner',
      'build',
      '--delete-conflicting-outputs',
      '--verbose',
    ],
    workingDirectory: workingDirectory,
  );
}

@Task('Build build runner')
Future<void> runnerall() async {
  apps.forEach((app) async => await runner(workingDirectory: app));
}

@Task('Generate localizations files')
Future<void> generateLocalizations() async {
  final l10nScriptFile = path.join(
    _flutterRootPath(),
    'dev',
    'tools',
    'localization',
    'gen_l10n.dart',
  );

  Dart.run(l10nScriptFile, arguments: [
    '--template-arb-file=intl_en.arb',
    '--output-localization-file=localizations.dart',
    '--output-class=MfLocalizations',
  ]);
  await format(workingDirectory: path.join('lib', 'l10n'));
}

@Task('Transform arb to xml for English')
@Depends(generateLocalizations)
Future<void> l10n() async {
  final l10nPath = path.join(Directory.current.path, 'l10n_cli');
  await pubget(workingDirectory: l10nPath);

  Dart.run(path.join(l10nPath, 'bin', 'main.dart'));
}

/// Return the flutter root path from the environment variables.
String _flutterRootPath() {
  return Platform.environment['FLUTTER_ROOT'];
}

Future<void> _runProcess(
  String executable,
  List<String> arguments, {
  String workingDirectory = '.',
}) async {
  final result = await Process.run(
    executable,
    arguments,
    workingDirectory: workingDirectory,
  );
  stdout.write(result.stdout);
  stderr.write(result.stderr);
}

@Task()
test() => new TestRunner().testAsync();

@DefaultTask()
@Depends(test)
build() {
  Pub.build();
}
