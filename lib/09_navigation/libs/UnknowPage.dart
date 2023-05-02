import 'package:flutter/material.dart';


class UnknowPage extends StatelessWidget {
  UnknowPage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentRoute = ModalRoute.of(context)!.settings;
    return Scaffold(
        appBar: AppBar(
          title: Text('404'),
          leading: Icon(Icons.adb),
          actions: [Icon(Icons.settings)],
        ),
        body: Center(
          child: Column(
            children: [

              Text('没有这个页面 404${currentRoute}'),
              ElevatedButton(
                onPressed: ()=> Navigator.pop(context), 
                child: Text('返回')
              )
            ],
          ),
        )

      );
  }
}