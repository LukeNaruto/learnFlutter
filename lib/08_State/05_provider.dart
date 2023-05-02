import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    // 2.创建provider，注册数据模型
    return ChangeNotifierProvider(
      create: (BuildContext context) => LikesModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('生命周期'),
          leading: Icon(Icons.adb),
          actions: [Icon(Icons.settings)],
        ),
        body: Column(
          children: [
            MyHomePage(),
            Divider(),
            MyHomePage1()
          ],
        )
      ),
    );
    
  }
}

// 1.创建数据模型
class LikesModel extends ChangeNotifier {
  int _counter = 0;

  // int get (counter) {
  //   return _counter;
  // }
  int get counter => _counter;

  incrementCounter(){
    _counter++;

    // 通知ui更新
    notifyListeners();
  }

}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('${context.watch<LikesModel>().counter}'),
        TextButton(
          onPressed: Provider.of<LikesModel>(context).incrementCounter, 
          child: Text('++')
        ),
      ],
    );
  }
}
class MyHomePage1 extends StatelessWidget {
  const MyHomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('${context.watch<LikesModel>().counter}'),
        
      ],
    );
  }
}