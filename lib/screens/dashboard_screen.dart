import 'package:flutter/material.dart';
import 'package:hero_dashboard_web/global_value.dart';
import 'package:hero_dashboard_web/screens/add_post_screen.dart';
import 'package:hero_dashboard_web/screens/clubs_list_screen.dart';
import 'package:hero_dashboard_web/screens/components/app_drawer.dart';
import 'package:hero_dashboard_web/screens/users_list_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<Widget> _bodyScreenList = [
    UsersListScreen(),
    ClubsListScreen(),
    AddPostScreen(),
  ];

  void updateScreenIndex() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: appDrawer(context, updateScreenIndex),
      body: _bodyScreenList[screenIndex],
    );
  }
}
