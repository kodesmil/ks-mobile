import 'package:legobook/lego_page_spaces.dart';
import 'package:legobook/lego_page_colors.dart';
import 'package:legobook/lego_page_texts.dart';
import 'package:legobook/lego_page_progress.dart';
import 'package:legobook/lego_page_buttons.dart';
import 'package:legobook/lego_page_radio_buttons_checkboxes.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/rare/style_switcher.dart';

class LegoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: Text('KodeSmil Lego'),
          actions: [
            IconButton(
              icon: Icon(Icons.style),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => StyleSwitcherDialog(
                    onChange: (theme) =>
                        DynamicTheme.of(context).setThemeData(theme),
                  ),
                );
              },
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: 'Texts'),
              Tab(text: 'Spaces'),
              Tab(text: 'Buttons'),
              Tab(text: 'Progress'),
              Tab(text: 'Radios'),
              Tab(text: 'Colors'),
              Tab(text: 'Text Fields'),
            ],
          ),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 64),
          child: TabBarView(
            children: [
              LegoTextsPage(),
              LegoSpacesPage(),
              LegoButtonsPage(),
              LegoProgressPage(),
              LegoRadioButtonsCheckboxesPage(),
              LegoColorsPage(),
              //LegoSpacesPage(),
              LegoSpacesPage(),
            ],
          ),
        ),
      ),
    );
  }
}

class LegoDefaultPage extends StatelessWidget {
  final Widget child;

  const LegoDefaultPage({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, constraints) => Container(
          width: constraints.maxWidth > 800
              ? constraints.maxWidth * 0.5
              : constraints.maxWidth * 0.9,
          child: Center(child: child),
        ),
      );
}
