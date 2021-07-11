import 'package:flutter/material.dart';
import 'package:portfolio/components/mobile_desktop_view_builder.dart';
import 'package:portfolio/navigation_bar/navigation_bar_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DrawerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MobileDesktopViewBuilder(
        showMobile: true,
        mobileView: DrawerMobileView(),
        desktopView: SizedBox());

  }
}

class DrawerMobileView extends StatelessWidget {
  const DrawerMobileView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.lightGreen,Colors.white],
                tileMode: TileMode.clamp,
              ),
            ),
            child: Text('Jaganathan Suruliraj'),
          ),
          for(var item in kNavigationItem)
            ListTile(
              title: Text(item.text),
              onTap: () {
                Navigator.pop(context);
              },
            ),
        ],
      ),
    );
  }
}