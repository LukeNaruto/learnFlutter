import 'package:flutter/material.dart';

export  'libs/Product.dart';
export 'libs/UnknowPage.dart';
export 'libs/ProductDetail.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('首页-动态路由1'),
          leading: Icon(Icons.adb),
          actions: [Icon(Icons.settings)],
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(
                  context, 
                  'product',
                  arguments: {
                    'title': '我是主页过1的'
                  }
                ), 
                child: Text('跳转商品页面-有参数')
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(
                  context, 
                  'product'
                ), 
                child: Text('跳转商品页面没参数')
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
