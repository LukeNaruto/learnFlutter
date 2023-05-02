import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('首页-2'),
          leading: Icon(Icons.ac_unit_outlined),
          actions: [Icon(Icons.settings)],
          elevation: 0.0,
          centerTitle: true,
        ),
        body: TextDemo());
  }
}

class TextDemo extends StatelessWidget {
  const TextDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Hello Flullter -2佛挡杀佛打扫房间大赛就飞快的撒娇范德萨抗锯齿艰苦奋斗萨科技发达世界科技",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontSize: 30,
              color: Colors.red,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.lineThrough),
          textAlign: TextAlign.left,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1.5,
        ),
        RichText(
            text: TextSpan(
                text: 'Hello',
                style: TextStyle(fontSize: 40, color: Colors.amberAccent),
                children: [
              TextSpan(
                  text: 'Flutter',
                  style: TextStyle(
                      fontSize: 40,
                      color: Color.fromARGB(255, 197, 69, 69),
                      fontFamily: 'ZCOOLXiaoWei-Regular')),
              TextSpan(
                  text: '你好世界',
                  style: TextStyle(fontSize: 40, color: Colors.green[400])),
              TextSpan(
                  text: '这是一段文字，那也是一段文字',
                  style: TextStyle(
                      fontSize: 40, color: Color.fromRGBO(255, 0, 0, .5)))
            ])),
      ],
    );
  }
}
