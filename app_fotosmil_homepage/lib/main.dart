import 'package:flutter/material.dart';
import 'package:lib_lego/themes.dart';
import 'package:lib_lego/spaces.dart';
import 'package:lib_lego/texts.dart';

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
              buildHeader(cns, context),
              Container(
                color: Colors.orange,
                height: 20,
              ),
              buildWhatsIncluded(context),
              SmilesWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Container buildHeader(BoxConstraints cns, BuildContext context) {
    return Container(
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
                  'fotosmil.trondheim@gmail.com',
                ),
                KsText.body2(
                  'tlf. 92125656',
                ),
              ],
            ),
          ),
          Center(
            heightFactor: 2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                KsText.display4(
                  'FotoSmil Trondheim',
                ),
                KsText.display2(
                  'Professional photo booth service',
                ),
                KsText.display1(
                  'for weddings, events and parties',
                ),
                KsVerticalSpace.xl(),
                KsText.display1(
                  'Price: 4000 NOK for 2 hours + 1000 NOK/extra hour',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Center buildWhatsIncluded(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          KsVerticalSpace.xxl(),
          KsText.display3(
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
    );
  }
}

class SmilesWidget extends StatefulWidget {
  @override
  _SmilesWidgetState createState() => _SmilesWidgetState();
}

class _SmilesWidgetState extends State<SmilesWidget>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  Animation<double> animation;

  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    animation = Tween<double>(begin: 22100, end: 22342).animate(controller);
    controller.forward();
  }

  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      padding: const EdgeInsets.all(64),
      child: SmileWidget(animation: animation),
    );
  }
}

class SmileWidget extends AnimatedWidget {
  SmileWidget({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);

  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Column(
      children: <Widget>[
        KsText.display3(animation.value.floor().toString()),
        KsText.display1('smiles delivered'),
      ],
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
            KsText.display1(title),
            KsVerticalSpace.m(),
            KsText.body2(description),
          ],
        ),
      ),
    );
  }
}

final features = [
  _Feature(
    title: 'Support & attendant',
    description: 'You won\'n need to worry about installation '
        'of the photo booth nor about any other technical issue. '
        'Let us do it for you.',
  ),
  _Feature(
    title: 'Unlimited photo printouts',
    description: 'There are usually 3 or 4 photos on a single printout stripe. '
        'We will print as many as needed - with no extra cost! '
        '(during rental hours)',
  ),
  _Feature(
    title: 'Top-quality camera',
    description: 'Photo booth services often use small, '
        'portable equipment with low-quality camera. '
        'Our photos are taken with a proffesional SLR camera to ensure the '
        'best quality for you.',
  ),
  _Feature(
    title: 'Vast choice of props',
    description: 'You can use all of our hundreds of props and backgrounds. '
        '(we send patterns on request). '
        'What\'s more, client can order props dedicated for a special theme party, '
        'altough this service is extra paid.',
  ),
  _Feature(
    title: 'Delivery within Stor Trondheim',
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
