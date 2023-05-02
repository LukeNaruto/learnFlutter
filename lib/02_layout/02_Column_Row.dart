import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.settings)],
        title: Text('Column_Row'),
        leading: Icon(Icons.menu),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: ColumnRowDemo(),
    );
  }
}

class ColumnRowDemo extends StatelessWidget {
  const ColumnRowDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen,
      width: double.infinity,
      child: Column(
          // 主轴的对齐方式
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.accessibility_new, size: 60),
            Icon(
              Icons.accessible_sharp,
              size: 60,
            ),
            Icon(Icons.account_box_outlined, size: 60),
            Icon(Icons.adb_rounded, size: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.accessibility_new, size: 60),
                Icon(
                  Icons.accessible_sharp,
                  size: 60,
                ),
                Icon(Icons.account_box_outlined, size: 60),
                Icon(Icons.adb_rounded, size: 60),
              ],
            )
          ]),
    );
  }
}
