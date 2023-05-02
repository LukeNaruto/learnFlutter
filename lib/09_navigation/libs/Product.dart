import 'package:flutter/material.dart';
import 'package:path/path.dart';

class Product extends StatelessWidget {
  const Product({super.key});
  
  @override
  Widget build(BuildContext context) {
    // final currentRoute = ModalRoute.of(context)!.settings.arguments;
    final Map<String, dynamic> args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
        appBar: AppBar(
          title: Text('商品页2 '),
          leading: Icon(Icons.adb),
          actions: [Icon(Icons.settings)],
        ),
        body: Center(
          child: Column(
            children: [
              Text('Here is-${args['title']}'),
              ElevatedButton(
                onPressed: ()=> Navigator.pop(context), 
                child: Text('返回')
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'product/1'), 
                child: Text('跳转product1-动态路由')
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(
                  context, 
                  'productDetail',
                  arguments: {
                    'id': 203
                  }
                ), 
                child: Text('跳转product203-动态路由')
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'us2222er'), 
                child: Text('未知路由')
              ),
            ],
          ),
        )

      );
  }
}