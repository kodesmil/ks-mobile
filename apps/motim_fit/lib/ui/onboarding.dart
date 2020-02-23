import 'package:feat_auth/stores/onboarding_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:motim_fit/utilities/styles.dart';

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
            child: Image(
              image: AssetImage(
                image,
              ),
              height: 300.0,
              width: 300.0,
            ),
          ),
          SizedBox(height: 30.0),
          RichText(
            text: TextSpan(
              style: kTitleStyle,
              children: <TextSpan>[
                TextSpan(text: text1),
                TextSpan(text: text2, style: kTitleStyleBold),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _store = OnboardingStore();
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
        color: isActive ? Colors.white : Color(0xFFC4C4C4),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF242424),
          ),
          child: Padding(
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
                        text2: 'Motim Fit!',
                        image: 'assets/images/onboarding0.png',
                      ),
                      new OnboardingFeatureWidget(
                        text1: 'Get out of\nthe house and\ncollect ',
                        text2: 'coupons.',
                        image: 'assets/images/onboarding1.png',
                      ),
                      new OnboardingFeatureWidget(
                        text1: 'Motim Fit\nfor ',
                        text2: 'everyone!',
                        image: 'assets/images/onboarding2.png',
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
        ),
      ),
      bottomSheet: Container(
        height: 68.0,
        width: double.infinity,
        color: Color(0xFF242424),
        child: GestureDetector(
          onTap: () {
            _store.onboardingDisplayed();
            Navigator.pushNamed(context, '/splash');
          },
          child: Padding(
            padding: EdgeInsets.only(top: 17.0, left: 74.0),
            child: Text(
              'Get started',
              style: TextStyle(
                color: Color(0xFFDED5BA),
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
