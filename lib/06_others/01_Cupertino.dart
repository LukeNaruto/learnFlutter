import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'dart:io';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Grid_view_build'),
          leading: Icon(Icons.adb),
          actions: [Icon(Icons.settings)],
        ),
        // body: GridViewCountDemo()
        // body: GridViewExtentDemo());GridViewBulderDemo
        body: MyBody());
  }
}

class MyBody extends StatelessWidget {
  const MyBody({super.key});
  @override
  Widget build(BuildContext context) {
    late Widget dialogBox;
    if (Platform.isIOS) {
      dialogBox = CupertinoDemo();
    } else if (Platform.isAndroid) {
      dialogBox = MaterialDemo();
    }
    return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        dialogBox
      ]),
    );
  }
}

class MaterialDemo extends StatelessWidget {
  const MaterialDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AlertDialog(
        title: Text('提示'),
        content: Text('确认删除吗？'),
        actions: [
          TextButton(
            child: Text('取消'),
            onPressed: () {
              print('确认取消');
            },
          ),
          TextButton(
            child: Text('确认'),
            onPressed: () {
              print('确认确认');
            },
          ),
        ],
      ),
    );
  }
}

class CupertinoDemo extends StatelessWidget {
  const CupertinoDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoAlertDialog(
        title: Text('提示'),
        content: Text('确认删除吗？'),
        actions: [
          CupertinoDialogAction(
            child: Text('取消'),
            onPressed: () {
              print('确认取消');
            },
          ),
          CupertinoDialogAction(
            child: Text('确认'),
            onPressed: () {
              print('确认确认');
            },
          ),
        ],
      ),
    );
  }
}
