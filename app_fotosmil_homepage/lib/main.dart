import 'package:app_fotosmil_homepage/models/feature.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/themes.dart';
import 'package:lib_lego/spaces.dart';
import 'package:lib_lego/texts.dart';
import 'package:lib_locale/localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: KsLoc.of(context).fsTitle(),
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
                KsText.body2(KsLoc.of(context).fsEmail()),
                KsText.body2(KsLoc.of(context).fsPhone()),
              ],
            ),
          ),
          Center(
            heightFactor: 2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                KsText.display4(KsLoc.of(context).fsTitle()),
                KsText.display2(KsLoc.of(context).fsProfessionalPhotoBooth()),
                KsText.display1(KsLoc.of(context).fsForWeddingsEvents()),
                KsVerticalSpace.xl(),
                KsText.display1(KsLoc.of(context).fsPrice()),
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
          KsText.display3(KsLoc.of(context).fsWhatsIncluded()),
          ...getFeatures(context)
              .map((f) => _FeatureWidget(
                    title: f.title,
                    description: f.description,
                  ))
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
        KsText.display1(KsLoc.of(context).fsSmilesDelivered()),
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
