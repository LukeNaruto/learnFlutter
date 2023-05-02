import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('路由跳转'),
          leading: Icon(Icons.adb),
          actions: [Icon(Icons.settings)],
        ),
        body: HomePage());
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
          child: Text('跳转到商品页面'),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Product())
            );
          },
        ),
      ),
    );
  }
}

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('路由返回'),
        leading: Icon(Icons.adb),
        actions: [Icon(Icons.settings)],
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            child: Text('返回'),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
      )
    );
  }
}