import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('DataTable'),
          leading: Icon(Icons.adb),
          actions: [Icon(Icons.settings)],
        ),
        body: UserList());
  }
}

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class User {
  String name;
  int age;
  bool selected;

  User(this.name, this.age, {this.selected = false});
}

class _UserListState extends State<UserList> {
  List<User> data = [
    User('张三', 22),
    User('张三丰', 108, selected: true),
    User('张翠兰', 18),
    User('张乌鸡', 11),
  ];

  var _sortAscending = false;


  List<DataRow> _getUserRows() {
    List<DataRow> dataRows = [];
    for (int i = 0; i < data.length; i++) {
      dataRows.add(
        DataRow(
          selected: data[i].selected,
          
          onSelectChanged: (selected) {
            setState(() {
              data[i].selected = selected!;
            });
          },
          cells: [
            DataCell(Text('${data[i].name}')),
            DataCell(Text('${data[i].age}')),
            DataCell(Text('男')),
            DataCell(Text('${data[i].selected ? '---' : '+++++'}')),
          ]
        )
      );
    }
    return dataRows;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          sortColumnIndex: 1,
          sortAscending: _sortAscending,
          dataRowHeight: 100,
          horizontalMargin: 20,
          columns: [
            DataColumn(label: Text('姓名')),
            DataColumn(
              label: Text('年龄'),
              onSort: (int columnIndex, bool ascending){
                setState(() {
                  _sortAscending = ascending;
                    if (ascending) {
                    data.sort(((a, b) => a.age.compareTo(b.age) ));
                  } else {
                    data.sort(((a, b) => b.age.compareTo(a.age) ));

                  }
                });
              }
            ),
            DataColumn(label: Text('性别')),
            DataColumn(label: Text('简介')),
          ], rows: _getUserRows()
        )
      ),
    );
  }
}
