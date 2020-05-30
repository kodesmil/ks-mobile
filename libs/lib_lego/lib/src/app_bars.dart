import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/src/themes.dart';
import 'package:provider/provider.dart';

class KsEmptyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) => Container();

  @override
  Size get preferredSize => Size(0.0, 0.0);
}

class KsNavigationBar extends StatelessWidget {
  final String title;

  const KsNavigationBar({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoSliverNavigationBar(
      largeTitle: Text(
        title,
        style: Theme.of(context).textTheme.headline5,
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      middle: Container(),
      trailing: Material(
        color: Colors.transparent,
      ),
    );
  }
}

class KsSmallNavigationBar extends CupertinoNavigationBar {
  KsSmallNavigationBar({
    Key key,
    BuildContext context,
    String title,
  }) : super(
          key: key,
          middle: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headline6
                .apply(color: Theme.of(context).colorScheme.onPrimary),
          ),
          actionsForegroundColor: Theme.of(context).colorScheme.onPrimary,
          backgroundColor: Theme.of(context).colorScheme.primary,
        );
}
