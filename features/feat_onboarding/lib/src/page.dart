import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'store.dart';

class OnboardingFeatureWidget extends StatelessWidget {
  const OnboardingFeatureWidget({
    Key key,
    this.text1,
    this.text2,
    this.image,
  }) : super(key: key);

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
            child: SvgPicture.asset(
              image,
              height: 300,
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
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
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
        padding: EdgeInsets.symmetric(vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 600.0,
              child: PageView(
                physics: ClampingScrollPhysics(),
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: <Widget>[
                  new OnboardingFeatureWidget(
                    text1: 'Be active with \n',
                    text2: 'Abli Health!',
                    image: 'assets/images/onboarding0.svg',
                  ),
                  new OnboardingFeatureWidget(
                    text1: 'Get out of\nthe house and\ncollect ',
                    text2: 'coupons.',
                    image: 'assets/images/onboarding1.svg',
                  ),
                  new OnboardingFeatureWidget(
                    text1: 'Abli Health\nfor ',
                    text2: 'everyone!',
                    image: 'assets/images/onboarding2.svg',
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
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 68.0,
          width: double.infinity,
          child: GestureDetector(
            onTap: () {
              store.onboardingDisplayed();
              Navigator.pushNamed(context, '/splash');
            },
            child: Center(
              child: Text(
                'Get started',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
