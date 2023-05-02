import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Text2'),
          leading: Icon(Icons.menu),
          actions: [Icon(Icons.settings)],
          elevation: 0.0,
          centerTitle: true,
        ),
        body: ContainerDemo());
  }
}

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text('热情防静电萨科技覅锯齿状没法打护肤群文件如何给法师打发打发金额启发的',
            style: TextStyle(fontSize: 20)),
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.fromLTRB(20, 12, 11, 50),
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        // transform:  Matrix4.identity()
        //       ..translate(12.0, 0.0, 100.0) // 平移
        //       ..rotateZ(0.1),
        transform: Matrix4.translationValues(50, 0, 0)
          ..translate(12.0, 0.0, 100.0)
          ..rotateZ(0.05),
        decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 10, color: Colors.red),
              bottom: BorderSide(width: 10, color: Colors.red),
              left: BorderSide(width: 10, color: Colors.red),
              right: BorderSide(width: 10, color: Colors.red),
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.lightBlue[200],
            gradient: LinearGradient(
                begin: Alignment(-1.0, -1.0),
                colors: [Colors.lightGreen, Colors.white10])));
  }
}
