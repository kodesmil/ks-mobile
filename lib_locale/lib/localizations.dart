import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

import 'messages_all.dart';

class KsLoc {
  KsLoc(Locale locale)
      : _localeName = Intl.canonicalizedLocale(locale.toString());

  final String _localeName;

  static Future<KsLoc> load(Locale locale) =>
      initializeMessages(locale.toString()).then<KsLoc>((_) => KsLoc(locale));

  static KsLoc of(BuildContext context) =>
      Localizations.of<KsLoc>(context, KsLoc);

  static const LocalizationsDelegate<KsLoc> delegate = _KsLocDelegate();

  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  static const List<Locale> supportedLocales = <Locale>[
    Locale('messages'),
    Locale('en'),
    Locale('nb'),
    Locale('pl'),
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

  String fsTitle() => Intl.message(
        r'FotoSmil Trondheim',
        locale: _localeName,
        name: 'fsTitle',
        desc: r'',
      );

  String fsProfessionalPhotoBooth() => Intl.message(
        r'Professional Photo Booth Service',
        locale: _localeName,
        name: 'fsProfessionalPhotoBooth',
        desc: r'',
      );

  String fsForWeddingsEvents() => Intl.message(
        r'for weddings, events and parties',
        locale: _localeName,
        name: 'fsForWeddingsEvents',
        desc: r'',
      );

  String fsEmail() => Intl.message(
        r'fotosmil.trondheim@gmail.com',
        locale: _localeName,
        name: 'fsEmail',
        desc: r'',
      );

  String fsPhone() => Intl.message(
        r'+47 921 256 56',
        locale: _localeName,
        name: 'fsPhone',
        desc: r'',
      );

  String fsPrice() => Intl.message(
        r'Price: only 4000 NOK for 2 hours + 1000 NOK/extra hour',
        locale: _localeName,
        name: 'fsPrice',
        desc: r'',
      );

  String fsSmilesDelivered() => Intl.message(
        r'smiles delivered',
        locale: _localeName,
        name: 'fsSmilesDelivered',
        desc: r'',
      );

  String fsWhatsIncluded() => Intl.message(
        'What\'s included?',
        locale: _localeName,
        name: 'fsWhatsIncluded',
        desc: r'',
      );

  String fsFeat1Title() => Intl.message(
        r'Support & attendant',
        locale: _localeName,
        name: 'fsFeat1Title',
        desc: r'',
      );

  String fsFeat1Description() => Intl.message(
        'You won\'n need to worry about installation '
        'of the photo booth nor about any other technical issue. '
        'Let us do it for you.',
        locale: _localeName,
        name: 'fsFeat1Description',
        desc: r'',
      );

  String fsFeat2Title() => Intl.message(
        r'Unlimited photo printouts',
        locale: _localeName,
        name: 'fsFeat2Title',
        desc: r'',
      );

  String fsFeat2Description() => Intl.message(
        'There are usually 3 or 4 photos on a single printout stripe. '
        'We will print as many as needed - with no extra cost! '
        '(during rental hours)',
        locale: _localeName,
        name: 'fsFeat2Description',
        desc: r'',
      );

  String fsFeat3Title() => Intl.message(
        r'Top-quality camera',
        locale: _localeName,
        name: 'fsFeat3Title',
        desc: r'',
      );

  String fsFeat3Description() => Intl.message(
        r'Photo booth services often use small, '
        'portable equipment with low-quality camera. '
        'Our photos are taken with a proffesional SLR camera to ensure the '
        'best quality for you.',
        locale: _localeName,
        name: 'fsFeat3Description',
        desc: r'',
      );

  String fsFeat4Title() => Intl.message(
        r'Vast choice of props',
        locale: _localeName,
        name: 'fsFeat4Title',
        desc: r'',
      );

  String fsFeat4Description() => Intl.message(
        'You can use all of our hundreds of props and backgrounds. '
        '(we send patterns on request). '
        'What\'s more, client can order props dedicated for a special theme party, '
        'altough this service is extra paid.',
        locale: _localeName,
        name: 'fsFeat4Description',
        desc: r'',
      );

  String fsFeat5Title() => Intl.message(
        r'Delivery within Stor Trondheim',
        locale: _localeName,
        name: 'fsFeat5Title',
        desc: r'',
      );

  String fsFeat5Description() => Intl.message(
        'Okay, let\'s say Orkanger, Stjørdal and Melhus are '
        'still free. For further distances - send us request.',
        locale: _localeName,
        name: 'fsFeat5Description',
        desc: r'',
      );

  String fsRecommendation1() => Intl.message(
        'FotoSmil er utrolig artig og gjestene våre digget det! Du får en god latter og et stort smil om munnen med bilder fra FotoSmil',
        locale: _localeName,
        name: 'fsRecommendation1',
        desc: r'',
      );

  String fsRecommendationAuthor1() => Intl.message(
        'Stammen Café & Bar Crew',
        locale: _localeName,
        name: 'fsRecommendationAuthor1',
        desc: r'',
      );

  String fsRecommendation2() => Intl.message(
        'I asked Fotosmil to organize a photo booth as an activity for the Julebord (Christmas dinner) '
        '2018/19 of the Department of Structural Engineering at NTNU. '
        'It was a great experience and people had a lot of fun with the costumes '
        'and possibilities that Fotosmil provided.'
        '\n\nMany people gave great feedback and thought it was a very '
        'original idea. The employees of Fotosmil provided a great service. '
        'They arrived punctual to the location and were very helpful in general. '
        'I strongly recommend contacting Fotosmil for events such as work-related parties, weddings and other ceremonies.',
        locale: _localeName,
        name: 'fsRecommendation2',
        desc: r'',
      );

  String fsRecommendationAuthor2() => Intl.message(
        'Jorge Mendoza Espinosa, NTNU',
        locale: _localeName,
        name: 'fsRecommendationAuthor2',
        desc: r'',
      );

  String fsOurRecommendations() => Intl.message(
        'Our recommendations',
        locale: _localeName,
        name: 'fsOurRecommendations',
        desc: r'',
      );

  String fsOurPartners() => Intl.message(
        'Our partners',
        locale: _localeName,
        name: 'fsOurPartners',
        desc: r'',
      );

  String fsContactUs() => Intl.message(
        'Contact us',
        locale: _localeName,
        name: 'fsOurPartners',
        desc: r'',
      );
}

class _KsLocDelegate extends LocalizationsDelegate<KsLoc> {
  const _KsLocDelegate();

  @override
  Future<KsLoc> load(Locale locale) => KsLoc.load(locale);

  @override
  bool isSupported(Locale locale) => <String>[
        'messages',
        'en',
        'nb',
        'pl',
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_KsLocDelegate old) => false;
}
