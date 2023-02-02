import 'package:flutter/material.dart';

class ClubsListScreen extends StatefulWidget {
  const ClubsListScreen({super.key});

  @override
  State<ClubsListScreen> createState() => _ClubsListScreenState();
}

class _ClubsListScreenState extends State<ClubsListScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'Clubs List Screen',
      style: TextStyle(color: Colors.white),
    ));
  }
}
