import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

import 'messages_all.dart';

/// Callers can lookup localized strings with an instance of MfLocalizations returned
/// by `MfLocalizations.of(context)`.
///
/// Applications need to include `MfLocalizations.delegate()` in their app's
/// localizationDelegates list, and the locales they support in the app's
/// supportedLocales list. For example:
///
/// ```
/// import 'l10n/localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: MfLocalizations.localizationsDelegates,
///   supportedLocales: MfLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: 0.16.0
///   intl_translation: 0.17.7
///
///   # rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the MfLocalizations.supportedLocales
/// property.
class MfLocalizations {
  MfLocalizations(Locale locale)
      : _localeName = Intl.canonicalizedLocale(locale.toString());

  final String _localeName;

  static Future<MfLocalizations> load(Locale locale) {
    return initializeMessages(locale.toString())
        .then<MfLocalizations>((_) => MfLocalizations(locale));
  }

  static MfLocalizations of(BuildContext context) {
    return Localizations.of<MfLocalizations>(context, MfLocalizations);
  }

  static const LocalizationsDelegate<MfLocalizations> delegate =
      _MfLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('messages'),
    Locale('nb'),
    Locale('pl'),
  ];

  String test() {
    return Intl.message(r'test', locale: _localeName, name: 'test', desc: r'');
  }
}

class _MfLocalizationsDelegate extends LocalizationsDelegate<MfLocalizations> {
  const _MfLocalizationsDelegate();

  @override
  Future<MfLocalizations> load(Locale locale) => MfLocalizations.load(locale);

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'messages', 'nb', 'pl'].contains(locale.languageCode);

  @override
  bool shouldReload(_MfLocalizationsDelegate old) => false;
}
