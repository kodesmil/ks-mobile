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

class KsNavigationBar extends StatelessWidget {
  final String title;

  const KsNavigationBar({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 120.0,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(
          left: 15,
          bottom: 5,
          top: 20,
        ),
        title: FittedBox(
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyText2.copyWith(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0,
                ),
          ),
        ),
        background: Padding(
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
        ),
      ),
    );
  }
}
class KsMNavigationBar extends StatelessWidget {
  final String title;

  const KsMNavigationBar({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(
          left: 15,
          bottom: 5,
          top: 20,
        ),
        title: FittedBox(
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyText2.copyWith(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0,
                ),
          ),
        ),
        background: Padding(
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
        ),
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
