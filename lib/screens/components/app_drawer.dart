import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hero_dashboard_web/global_value.dart';

Drawer appDrawer(BuildContext context, Function updateIndex) {
  void updateScreenIndex(int index) {
    screenIndex = index;
    updateIndex();
    Navigator.pop(context);
  }

  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Color(0xFF1E1E2D).withOpacity(0.8),
          ),
          child: Center(
            child: Text(
              'Drawer Header/Logo',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        _drawerMenu(FontAwesomeIcons.users, "Users", () {
          updateScreenIndex(0);
        }),
        _drawerMenu(FontAwesomeIcons.users, "Teams", () {
          updateScreenIndex(1);
        }),
        _drawerMenu(FontAwesomeIcons.users, "Add Post", () {
          updateScreenIndex(2);
        }),
        _drawerMenu(FontAwesomeIcons.arrowRightFromBracket, "Log Out", () {
          updateScreenIndex(0);
          Navigator.pop(context);
        }),
      ],
    ),
  );
}

Widget _drawerMenu(IconData iconData, String title, Function() onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      child: Row(
        children: [
          FaIcon(iconData),
          SizedBox(
            width: 16.w,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 20.sp,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
  );
}
