import 'package:flutter/material.dart';

export  'libs/Product.dart';
export 'libs/UnknowPage.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('首页1'),
          leading: Icon(Icons.adb),
          actions: [Icon(Icons.settings)],
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'product'), 
                child: Text('跳转')
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'user'), 
                child: Text('未知路由')
              ),
            ],
          ),
        )

      );
  }
}
