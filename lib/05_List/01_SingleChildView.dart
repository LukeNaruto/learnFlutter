import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('list-滚动'),
          leading: Icon(Icons.adb),
          actions: [Icon(Icons.settings)],
        ),
        body: SingleChildScrollViewDemo());
  }
}

class SingleChildScrollViewDemo extends StatelessWidget {
  const SingleChildScrollViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      
      children: [
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(10),
            reverse: true,
            child: Row(
              children: [
                OutlinedButton(onPressed: () {}, child: Text('按钮1')),
                OutlinedButton(onPressed: () {}, child: Text('按钮2')),
                OutlinedButton(onPressed: () {}, child: Text('按钮3')),
                OutlinedButton(onPressed: () {}, child: Text('按钮4')),
                OutlinedButton(onPressed: () {}, child: Text('按钮5')),
                OutlinedButton(onPressed: () {}, child: Text('按钮6')),
                OutlinedButton(onPressed: () {}, child: Text('按钮7')),
                OutlinedButton(onPressed: () {}, child: Text('按钮8')),
              ],
            )),
        SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(10),
            physics: BouncingScrollPhysics(),
            child: Column(
              children: List.generate(100, (index) {
                return OutlinedButton(
                  onPressed: () {}, 
                  child: Text('按钮$index')
                );
              }),
            ))
      ],
    );
  }
}
