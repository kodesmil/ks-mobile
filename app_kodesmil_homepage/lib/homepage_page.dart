import 'package:app_kodesmil_homepage/widgets/content.dart';
import 'package:app_kodesmil_homepage/widgets/footer.dart';
import 'package:app_kodesmil_homepage/widgets/headers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/flutter_widgets.dart';
import 'package:lib_lego/homepage/contact.dart';
import 'package:lib_lego/spaces.dart';

class HomepagePage extends StatefulWidget {
  @override
  _HomepagePageState createState() => _HomepagePageState();
}

class _HomepagePageState extends State<HomepagePage> {
  ItemScrollController controller;
  List<Widget> widgets;

  @override
  void initState() {
    controller = ItemScrollController();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    widgets = [
      HeaderWidget(
        onContactTap: () {
          setState(() {
            controller.jumpTo(index: 5);
          });
        },
        onReadMoreTap: () {
          setState(() {
            controller.jumpTo(index: 1);
          });
        },
      ),
      ContentWidget(),
      KsSpace.xl(),
      Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Image.asset(
            'assets/let_s_make_great.png',
            scale: MediaQuery.of(context).size.width > 666 ? 1.5 : 2.25,
          ),
        ],
      ),
      KsSpace.l(),
      ContactWidget(
        companyName: 'KodeSmil',
      ),
      FooterWidget(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    ;
    return Scaffold(
      body: ScrollablePositionedList.builder(
        itemScrollController: controller,
        itemBuilder: (context, position) => widgets[position],
        itemCount: 7,
      ),
    );
  }
}
