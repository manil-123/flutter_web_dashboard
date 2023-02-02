import 'package:flutter/material.dart';
import 'package:hero_dashboard_web/global_value.dart';
import 'package:hero_dashboard_web/screens/user_detail_screen.dart';
import 'package:hero_dashboard_web/utils/data_table_source.dart';

class UsersListScreen extends StatefulWidget {
  const UsersListScreen({super.key});

  @override
  State<UsersListScreen> createState() => _UsersListScreenState();
}

class _UsersListScreenState extends State<UsersListScreen> {
  DataTableSource? _dataTableSource;

  void _navigateToDetailScreen(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UserDetailScreen(
          userData: usersList[index],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _dataTableSource =
        MyDataSource(usersList: usersList, onPressed: _navigateToDetailScreen);
  }

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
          Theme(
            data: Theme.of(context).copyWith(
              dividerColor: Colors.white,
              cardColor: Color(0xFF1E1E2D),
              dataTableTheme: DataTableThemeData(
                dataTextStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
              textTheme:
                  Theme.of(context).textTheme.apply(displayColor: Colors.white),
            ),
            child: PaginatedDataTable(
              source: _dataTableSource!,
              columns: [
                _dataColumn('Id'),
                _dataColumn('First Name'),
                _dataColumn('Last Name'),
                _dataColumn('Email'),
                _dataColumn('FCM Token'),
                _dataColumn('Is VIP'),
                _dataColumn(''),
              ],
              columnSpacing: 100,
              horizontalMargin: 10,
              rowsPerPage: 10,
              showCheckboxColumn: false,
              arrowHeadColor: Colors.white,
            ),
          ),
        ]));
  }

  DataColumn _dataColumn(String title) {
    return DataColumn(
        label: Text(title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)));
  }
}
