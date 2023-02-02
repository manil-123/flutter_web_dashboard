import 'package:flutter/material.dart';
import 'package:hero_dashboard_web/global_value.dart';

class UsersListScreen extends StatefulWidget {
  const UsersListScreen({super.key});

  @override
  State<UsersListScreen> createState() => _UsersListScreenState();
}

class _UsersListScreenState extends State<UsersListScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16),
        child: ListView(children: <Widget>[
          Center(
              child: Text(
            'App Users List',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
          SizedBox(
            height: 16,
          ),
          DataTable(
              border: TableBorder(
                borderRadius: BorderRadius.circular(2),
                top: BorderSide(width: 1, color: Colors.white),
                right: BorderSide(width: 1, color: Colors.white),
                bottom: BorderSide(width: 1, color: Colors.white),
                left: BorderSide(width: 1, color: Colors.white),
                horizontalInside: BorderSide(width: 1, color: Colors.white),
                verticalInside: BorderSide(width: 1, color: Colors.white),
              ),
              columns: [
                _dataColumn('Id'),
                _dataColumn('First Name'),
                _dataColumn('Last Name'),
                _dataColumn('Email'),
                _dataColumn('FCM Token'),
                _dataColumn('Is VIP'),
              ],
              rows: usersList
                  .map((element) => DataRow(cells: <DataCell>[
                        DataCell(Text(element.id!)),
                        DataCell(Text(element.firstName!)),
                        DataCell(Text(element.lastName!)),
                        DataCell(Text(element.email!)),
                        DataCell(Text(element.fcmToken!)),
                        DataCell(Text(element.isVip!.toString())),
                      ]))
                  .toList()),
        ]));
  }

  DataColumn _dataColumn(String title) {
    return DataColumn(
        label: Text(title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)));
  }
}
