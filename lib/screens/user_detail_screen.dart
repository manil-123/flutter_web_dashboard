import 'package:flutter/material.dart';
import 'package:hero_dashboard_web/models/user_data_model.dart';
import 'package:hero_dashboard_web/screens/components/app_drawer.dart';

class UserDetailScreen extends StatefulWidget {
  final UserDataModel? userData;
  const UserDetailScreen({super.key, this.userData});

  @override
  State<UserDetailScreen> createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: appDrawer(context, () {
        setState(() {});
        Navigator.pop(context);
      }),
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.userData!.id.toString(),
            ),
            Text(
              widget.userData!.firstName.toString(),
            ),
            Text(
              widget.userData!.lastName.toString(),
            ),
            Text(
              widget.userData!.email.toString(),
            ),
            Text(
              widget.userData!.fcmToken.toString(),
            ),
            Text(
              widget.userData!.isVip.toString(),
            ),
          ],
        ),
      ),
    );
  }
}
