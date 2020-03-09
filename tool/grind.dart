import 'dart:io';

import 'package:grinder/grinder.dart';
import 'package:path/path.dart' as path;

main(args) => grind(args);

final apps = [
  '.',
  'translations/kodesmil_locale',
  'libs/lib_lego',
  'libs/lib_di',
  'features/feat_activities',
  'features/feat_auth',
  'features/feat_fit',
  'features/feat_sensors',
  'features/feat_onboarding',
  'features/feat_splash',
  'features/feat_health_survey',
  'apps/ably',
  'apps/motim_fit',
  'apps/legobook',
  'landings/land_motim',
  'landings/land_fotosmil',
  'landings/land_kodesmil',
];

@Task('Get packages')
Future<void> pubget({String workingDirectory}) async {
  await _runProcess(
    'flutter',
    ['pub', 'get'],
    workingDirectory: workingDirectory,
  );
}

@Task('Get all packages')
Future<void> pubgetall() async {
  return timelabeled(() async {
    for (String app in apps) {
      await pubget(workingDirectory: app);
    }
  });
}

@Task('Upgrade packages')
Future<void> pubupgrade({String workingDirectory}) async {
  await _runProcess(
    'flutter',
    ['pub', 'upgrade'],
    workingDirectory: workingDirectory,
  );
}

@Task('Upgrade all packages')
Future<void> pubupgradeall() async {
  return timelabeled(() async {
    for (String app in apps) {
      await pubupgrade(workingDirectory: app);
    }
  });
}

@Task('Format dart files')
Future<void> format({String workingDirectory = '.'}) async {
  await _runProcess('flutter', ['format'], workingDirectory: workingDirectory);
}

@Task('Format all dart files')
Future<void> formatall() async {
  return timelabeled(() async {
    for (String app in apps) {
      await format(workingDirectory: app);
    }
  });
}

@Task('Clean dart files')
Future<void> clean({String workingDirectory = '.'}) async {
  await _runProcess('flutter', ['clean'], workingDirectory: workingDirectory);
}

@Task('Clean all dart files')
Future<void> cleanall() async {
  return timelabeled(() async {
    for (String app in apps) {
      await clean(workingDirectory: app);
    }
  });
}

@Task('Autogenerate runner code for one')
Future<void> runner({String workingDirectory}) async {
  TaskArgs args = context.invocation.arguments;
  String dir = workingDirectory ?? args.getOption('dir') ?? '.';
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
    workingDirectory: dir,
  );
}

@Task('Autogenerate runner code for all')
Future<void> runnerall() async {
  return timelabeled(() async {
    for (String app in apps) {
      await runner(workingDirectory: app);
    }
  });
}

Future<void> timelabeled(Function function) async {
  final start = DateTime.now();
  await function();
  final end = DateTime.now();
  print('Finished in ${end.difference(start)}');
}

@Task('Watch & autogenerate runner code for one')
Future<void> watch({String workingDirectory}) async {
  TaskArgs args = context.invocation.arguments;
  String dir = workingDirectory ?? args.getOption('dir') ?? '.';
  await _runProcess(
    'flutter',
    [
      'packages',
      'pub',
      'run',
      'build_runner',
      'watch',
      '--delete-conflicting-outputs',
      '--verbose',
    ],
    workingDirectory: dir,
  );
}

@Task('Watch & autogenerate runner code for all')
Future<void> watchall() async {
  apps.forEach((app) async => await watch(workingDirectory: app));
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
  print('Running $executable $arguments in $workingDirectory');
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
