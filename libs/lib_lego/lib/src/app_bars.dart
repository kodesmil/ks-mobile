import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lib_lego/src/themes.dart';
import 'package:provider/provider.dart';

class KsEmptyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) => Container();

  @override
  Size get preferredSize => Size(0.0, 0.0);
}

class KsNavigationBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget action;
  final bool withBackgroundImage;

  const KsNavigationBar({
    Key key,
    this.title,
    this.action,
    this.withBackgroundImage = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 120.0,
      pinned: true,
      actions: [action, SizedBox(width: 10)],
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(
          left: 15,
          bottom: 5,
          top: 15,
        ),
        title: FittedBox(
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyText2.copyWith(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0,
                  color: Colors.white.withOpacity(0.85),
                ),
          ),
        ),
        background: withBackgroundImage
            ? Padding(
                padding: EdgeInsets.only(
                  right: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      'assets/images/onboarding1.svg',
                      height: 100,
                    ),
                  ],
                ),
              )
            : Container(),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(120);
}

class KsSmallNavigationBar extends StatelessWidget
    implements ObstructingPreferredSizeWidget {
  final String title;

  KsSmallNavigationBar({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      middle: Text(
        title,
        style: Theme.of(context).textTheme.headline6.apply(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
      ),
      actionsForegroundColor: Theme.of(context).colorScheme.onPrimary,
      backgroundColor: Theme.of(context).colorScheme.surface,
    );
  }

  @override
  bool shouldFullyObstruct(BuildContext context) {
    final color = CupertinoTheme.of(context).barBackgroundColor;
    return color.alpha == 0xFF;
  }

  @override
  Size get preferredSize {
    return const Size.fromHeight(44);
  }
}

class KsAppBar extends AppBar {
  KsAppBar({
    Key key,
    BuildContext context,
    String title,
  }) : super(
          key: key,
          elevation: 0,
          title: Text(
            title,
            style: Theme.of(context).textTheme.bodyText2.copyWith(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0,
                ),
          ),
        );
}
