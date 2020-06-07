import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

import 'l10n/messages_all.dart';

class L {
  L(Locale locale) : _localeName = Intl.canonicalizedLocale(locale.toString());

  final String _localeName;

  static Future<L> load(Locale locale) =>
      initializeMessages(locale.toString()).then<L>((_) => L(locale));

  static L of(BuildContext context) => Localizations.of<L>(context, L);

  static const LocalizationsDelegate<L> delegate = _KsLocDelegate();

  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('nb'),
    Locale('pl'),
    Locale('te'),
    Locale('hi'),
  ];

  String test() => Intl.message(
        r'test',
        locale: _localeName,
        name: 'test',
        desc: r'',
      );

  String gJournal() => Intl.message(
        r'Journal',
        locale: _localeName,
        name: 'gJournal',
        desc: r'',
      );
}

class _KsLocDelegate extends LocalizationsDelegate<L> {
  const _KsLocDelegate();

  @override
  Future<L> load(Locale locale) => L.load(locale);

  @override
  bool isSupported(Locale locale) => <String>[
        'en',
        'nb',
        'pl',
        'te',
        'hi',
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_KsLocDelegate old) => false;
}
