import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key,required this.id});
  final String id;
  @override
  Widget build(BuildContext context) {
    
    final currentRoute = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
        appBar: AppBar(
          title: Text('商品详情页 ${currentRoute}'),
          leading: Icon(Icons.adb),
          actions: [Icon(Icons.settings)],
        ),
        body: Center(
          child: Column(
            children: [
              Text('当前商品ID-${id}'),
              ElevatedButton(
                onPressed: ()=> Navigator.pop(context), 
                child: Text('返回')
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