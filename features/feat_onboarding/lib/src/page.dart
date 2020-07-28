import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'store.dart';

class OnboardingFeatureWidget extends StatelessWidget {
  const OnboardingFeatureWidget(
      {Key key, this.text1, this.text2, this.image, t})
      : super(key: key);

  final String text1;
  final String text2;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: image.contains('svg')
                ? SvgPicture.asset(
                    image,
                    height: 300,
                  )
                : Image.asset(
                    image,
                    height: 350,
                    fit: BoxFit.fitHeight,
                  ),
          ),
          SizedBox(height: 30.0),
          RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.headline4,
              children: <TextSpan>[
                TextSpan(text: text1),
                TextSpan(
                  text: text2,
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        fontWeight: FontWeight.w900,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatefulWidget {

  const OnboardingPage({Key key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    var list = <Widget>[];
    for (var i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 10.0,
      width: 10.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Color(0xFFC4C4C4),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<OnboardingStore>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 120, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: PageView(
                physics: ClampingScrollPhysics(),
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: <Widget>[
                  OnboardingFeatureWidget(
                    text1: 'Reduce anxiety \nwith ',
                    text2: 'Hooli!',
                    image: 'assets/images/women/computer.png',
                  ),
                  OnboardingFeatureWidget(
                    text1: 'Get motivated and find your ',
                    text2: 'relaxation.',
                    image: 'assets/images/women/relaxing.png',
                  ),
                  OnboardingFeatureWidget(
                    text1: 'Hooli App\nfor ',
                    text2: 'everyone!',
                    image: 'assets/images/women/selfie.png',
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildPageIndicator(),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 120,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 24,
            ),
            child: ClayContainer(
              height: 60,
              borderRadius: 200,
              color: Colors.white,
              curveType: CurveType.convex,
              child: FlatButton(
                onPressed: () {
                  store.onboardingDisplayed();
                  Navigator.pushNamed(context, '/splash');
                },
                child: Text(
                  'Get started'.toUpperCase(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
