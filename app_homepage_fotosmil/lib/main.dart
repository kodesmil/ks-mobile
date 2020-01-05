import 'package:flutter/material.dart';
import 'package:lib_lego/theme.dart';
import 'package:lib_lego/widgets/spaces.dart';
import 'package:lib_lego/widgets/texts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FotoSmil Trondheim',
      theme: MfThemeData.light(),
      home: Scaffold(
        body: LayoutBuilder(
          builder: (ctx, cns) => ListView(
            children: <Widget>[
              Container(
                color: Colors.red,
                height: cns.biggest.height,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/background.jpg',
                      fit: BoxFit.cover,
                      width: cns.biggest.width,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          KsText.body2(
                            context,
                            'fotosmil.trondheim@gmail.com',
                          ),
                          KsText.body2(
                            context,
                            'tlf. 92125656',
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          KsText.display4(
                            context,
                            'FotoSmil Trondheim',
                          ),
                          KsText.display2(
                            context,
                            'Professional photo booth service',
                          ),
                          KsText.display1(
                            context,
                            'for weddings, events and parties',
                          ),
                          KsVerticalSpace.xl(),
                          KsText.display1(
                            context,
                            'Price: 4000 NOK for 2 hours + 1000 NOK/extra hour',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.orange,
                height: 20,
              ),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    KsVerticalSpace.xxl(),
                    KsText.display3(
                      context,
                      'What\'s included?',
                    ),
                    ...features
                        .map(
                          (f) => _FeatureWidget(
                            title: f.title,
                            description: f.description,
                          ),
                        )
                        .toList(),
                    KsVerticalSpace.xxl(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FeatureWidget extends StatelessWidget {
  final String title;
  final String description;

  const _FeatureWidget({
    Key key,
    this.title,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, cns) => Container(
        width: cns.maxWidth * 0.5,
        child: Column(
          children: <Widget>[
            KsVerticalSpace.xl(),
            KsText.display1(context, title),
            KsVerticalSpace.m(),
            KsText.body2(context, description),
          ],
        ),
      ),
    );
  }
}

final features = [
  _Feature(
    title: 'An attendant that is always there',
    description: 'The client does not have to worry about installing '
        'the photo booth nor any other technical issues. '
        'Let us do it for you.',
  ),
  _Feature(
    title: 'Photo printouts are unlimited',
    description: 'There is usually 3 or 4 photos at a single printout stripe. '
        'We can print as many as needed with no extra cost for the client, '
        'during rental hours',
  ),
  _Feature(
    title: 'Photos are taken with a proffesional SLR camera',
    description: 'There is many photo booth services offering small, '
        'portable equipment with low-quality camera. '
        'We offer a top quality.',
  ),
  _Feature(
    title: 'Vast choice of props',
    description: 'All props and backgrounds are available to our '
        'clients (we send patterns on request). '
        'What\'s more, client can order props dedicated for a special theme party, '
        'altough this service is extra paid.',
  ),
  _Feature(
    title: 'Delivery within Stor Trondheim is free',
    description: 'Okay, let\'s say Orkanger, Stjørdal and Melhus are '
        'still free. For further distances - send us request.',
  ),
];

class _Feature {
  String title;
  String description;

  _Feature({
    this.title,
    this.description,
  });
}
