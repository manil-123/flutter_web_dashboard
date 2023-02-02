// The "source" of the table
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hero_dashboard_web/models/user_data_model.dart';

class MyDataSource extends DataTableSource {
  final List<UserDataModel>? usersList;
  final Function(int)? onPressed;

  MyDataSource({this.usersList, this.onPressed});

  @override
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => usersList!.length;
  @override
  int get selectedRowCount => 0;
  @override
  DataRow getRow(int index) {
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(Text(usersList![index].id.toString())),
        DataCell(Text(usersList![index].firstName.toString())),
        DataCell(Text(usersList![index].lastName.toString())),
        DataCell(Text(usersList![index].email.toString())),
        DataCell(Text(usersList![index].fcmToken.toString())),
        DataCell(Text(usersList![index].isVip.toString())),
        DataCell(
          Text(
            "View Details",
            style: TextStyle(
                fontSize: 12.sp, decoration: TextDecoration.underline),
          ),
          onTap: () {
            onPressed!(index);
          },
        ),
      ],
    );
  }
}
