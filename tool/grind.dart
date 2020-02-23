import 'dart:io';

import 'package:grinder/grinder.dart';
import 'package:path/path.dart' as path;

main(args) => grind(args);

final apps = [
  '.',
  'translations/kodesmil_locale',
  'libs/lib_lego',
  'libs/lib_di',
  'modules/module_auth',
  'modules/module_fit',
  'modules/module_sensors',
  'apps/ably',
  'apps/motim_fit',
  'apps/legobook',
  'landings/motim_landing',
  'landings/fotosmil_landing',
  'landings/kodesmil_landing',
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
Future<void> generatelocalizations() async {
  _runProcess(
    'flutter',
    [
      'pub',
      'run',
      'intl_translation:extract_to_arb',
      '--output-dir=kodesmil_locale/lib',
      'kodesmil_locale/lib/localizations.dart',
    ],
  );
  _runProcess(
    'flutter',
    [
      'pub',
      'run',
      'intl_translation:generate_from_arb',
      '--output-dir=kodesmil_locale/lib',
      '--no-use-deferred-loading',
      'translations/kodesmil_locale/lib/localizations.dart',
      'translations/kodesmil_locale/lib/intl_messages.arb',
      'translations/kodesmil_locale/lib/intl_en.arb',
      'translations/kodesmil_locale/lib/intl_nb.arb',
      'translations/kodesmil_locale/lib/intl_pl.arb',
    ],
  );
  await format(
      workingDirectory: path.join('translations/kodesmil_locale', 'lib'));
}

@Task('Transform arb to xml for English')
@Depends(generatelocalizations)
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
