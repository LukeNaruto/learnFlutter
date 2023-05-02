import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cart-卡片布局'),
          leading: Icon(Icons.adb),
          actions: [Icon(Icons.android)],
          centerTitle: true,
        ),
        body: CartDemo());
  }
}

class CartDemo extends StatelessWidget {
  const CartDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Colors.amber,
          margin: EdgeInsets.all(30),
          child: Column(
            children: [
              ListTile(
                title: Text('张三'),
                leading: Icon(Icons.accessibility_new, size: 50),
                subtitle: Text('董事长'),
              ),
              Divider(),
              ListTile(
                title: Text(
                  '电话:13333333333',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              ListTile(
                title: Text(
                  '地址:阿尔法星座银河系',
                  style: TextStyle(fontSize: 25),
                ),
              )
            ],
          ),
        ),
        Card(
          color: Colors.amber,
          margin: EdgeInsets.all(30),
          shadowColor: Colors.red,
          elevation: 10,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: BorderSide(color: Colors.green, width: 5)),
          child: Column(
            children: [
              ListTile(
                title: Text('李四'),
                leading: Icon(Icons.accessibility_new, size: 50),
                subtitle: Text('CEO'),
              ),
              Divider(),
              ListTile(
                title: Text(
                  '电话:13333333333',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              ListTile(
                title: Text(
                  '地址:阿尔法星座银河系',
                  style: TextStyle(fontSize: 25),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
