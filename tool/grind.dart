import 'dart:io';

import 'package:grinder/grinder.dart';
import 'package:path/path.dart' as path;

main(args) => grind(args);

final apps = [
  'translations/kodesmil_locale',
  'libs/lib_lego',
  'libs/lib_di',
  'libs/lib_services',
  'features/feat_activities',
  'features/feat_auth',
  'features/feat_fit',
  'features/feat_sensors',
  'features/feat_chat',
  'features/feat_storage',
  'features/feat_template',
  'features/feat_onboarding',
  'features/feat_splash',
  'features/feat_survey',
  'features/feat_notifications',
  'features/feat_locations',
  'features/feat_survey',
  'features/feat_profile',
  'features/feat_feed',
  'features/feat_journal',
  'apps/ably',
  'apps/motim_fit',
  'apps/legobook',
  'landings/land_kodesmil',
];

@Task('Get packages')
Future<void> pubget() async {
  TaskArgs args = context.invocation.arguments;
  String dir = args.getOption('dir');
  if (dir != null) {
    await _pubget(dir: dir);
  } else {
    for (String app in apps) {
      await _pubget(dir: app);
    }
  }
}

Future<void> _pubget({String dir}) async {
  await _runProcess(
    'flutter',
    ['pub', 'get'],
    dir: dir,
  );
}

@Task('Upgrade packages')
Future<void> pubupgrade() async {
  TaskArgs args = context.invocation.arguments;
  String dir = args.getOption('dir');
  if (dir != null) {
    await _pubupgrade(dir: dir);
  } else {
    for (String app in apps) {
      await _pubupgrade(dir: app);
    }
  }
}

Future<void> _pubupgrade({String dir}) async {
  await _runProcess(
    'flutter',
    ['pub', 'upgrade'],
    dir: dir,
  );
}

@Task('Format dart files')
Future<void> format() async {
  await _runProcess('flutter', ['format'], dir: '.');
}

@Task('Clean dart files')
Future<void> clean() async {
  TaskArgs args = context.invocation.arguments;
  String dir = args.getOption('dir');
  if (dir != null) {
    await _clean(dir: dir);
  } else {
    for (String app in apps) {
      await _clean(dir: app);
    }
  }
}

Future<void> _clean({String dir = '.'}) async {
  await _runProcess('flutter', ['clean'], dir: dir);
}

@Task('Autogenerate runner code')
Future<void> runner() async {
  TaskArgs args = context.invocation.arguments;
  String dir = args.getOption('dir');
  if (dir != null) {
    await _runner(dir: dir);
  } else {
    for (String app in apps) {
      await _runner(dir: app);
    }
  }
}

Future<void> _runner({String dir}) async {
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
    dir: dir,
  );
}

@Task('Fastlane deploy')
Future<void> deploy() async {
  TaskArgs args = context.invocation.arguments;
  String dir = args.getOption('dir');
  String env = args.getOption('env');
  if (dir != null) {
    await _deploy(dir: dir, env: env);
  } else {
    for (String app in apps) {
      await _deploy(dir: app, env: env);
    }
  }
}

Future<void> _deploy({String env, String dir}) async {
  await _runProcess(
    'bundle',
    [
      'exec',
      'fastlane',
      'ios',
      'deploy_qa',
    ],
    dir: dir,
  );
}

@Task('Fastlane build')
Future<void> build() async {
  TaskArgs args = context.invocation.arguments;
  String dir = args.getOption('dir');
  String env = args.getOption('env');
  if (dir != null) {
    await _build(dir: dir, env: env);
  } else {
    for (String app in apps) {
      await _build(dir: app, env: env);
    }
  }
}

Future<void> _build({String env, String dir}) async {
  await _runProcess(
    'bundle',
    [
      'exec',
      'fastlane',
      'ios',
      'build_qa',
    ],
    dir: dir,
  );
}


@Task('Bundle install')
Future<void> bundleinstall() async {
  TaskArgs args = context.invocation.arguments;
  String dir = args.getOption('dir');
  String env = args.getOption('env');
  if (dir != null) {
    await _bundleinstall(dir: dir, env: env);
  } else {
    for (String app in apps) {
      await _bundleinstall(dir: app, env: env);
    }
  }
}

Future<void> _bundleinstall({String env, String dir}) async {
  await _runProcess(
    'bundle',
    [
      'install',
    ],
    dir: dir,
  );
}

@Task('Watch & autogenerate runner code')
Future<void> watch() async {
  TaskArgs args = context.invocation.arguments;
  String dir = args.getOption('dir');
  if (dir != null) {
    await _watch(dir: dir);
  } else {
    for (String app in apps) {
      await _watch(dir: app);
    }
  }
}

Future<void> _watch({String dir}) async {
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
    dir: dir,
  );
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
  await format();
}

@Task('Transform arb to xml for English')
@Depends(generatelocalizations)
Future<void> l10n() async {
  final l10nPath = path.join(Directory.current.path, 'l10n_cli');
  await _pubget(dir: l10nPath);

  Dart.run(path.join(l10nPath, 'bin', 'main.dart'));
}

Future<void> _runProcess(
  String executable,
  List<String> arguments, {
  String dir = '.',
}) async {
  print('Running $executable $arguments in $dir');
  final result = await Process.run(
    executable,
    arguments,
    workingDirectory: dir,
  );
  stdout.write(result.stdout);
  stderr.write(result.stderr);
}

@Task()
test() => new TestRunner().testAsync();