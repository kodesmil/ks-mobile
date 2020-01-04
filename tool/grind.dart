import 'package:grinder/grinder.dart';
import 'dart:io';
import 'package:path/path.dart' as path;

main(args) => grind(args);

@Task('Get packages')
Future<void> pubGet({String directory}) async {
  await _runProcess(
    'flutter',
    ['pub', 'get', if (directory != null) directory],
  );
}

@Task('Format dart files')
Future<void> format({String path = '.'}) async {
  await _runProcess('flutter', ['format', path]);
}

@Task('Build build runner')
Future<void> runner() async {
  await _buildRunner();
  await _buildRunner(workingDirectory: 'lib_auth');
  await _buildRunner(workingDirectory: 'lib_di');
  // await _buildRunner(workingDirectory: 'lib_lego');
  // await _buildRunner(workingDirectory: 'lib_locale');
  // await _buildRunner(workingDirectory: 'app_homepage');
}

Future<void> _buildRunner({String workingDirectory = '.'}) async {
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
  await format(path: path.join('lib', 'l10n'));
}

@Task('Transform arb to xml for English')
@Depends(generateLocalizations)
Future<void> l10n() async {
  final l10nPath = path.join(Directory.current.path, 'l10n_cli');
  await pubGet(directory: l10nPath);

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

@Task()
clean() => defaultClean();
