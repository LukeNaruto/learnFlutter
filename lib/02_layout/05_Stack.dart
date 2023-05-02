import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack-层叠布局'),
        leading: Icon(Icons.adb),
        actions: [Icon(Icons.settings)],
      ),
      body: StackDemo()
    );
  }
}

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Stack(
        textDirection: TextDirection.rtl,
        alignment: AlignmentDirectional.centerEnd,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://img.win3000.com/m00/3a/d5/98be0c69b5811baec343fe8ca87f1021.jpg'),
            // child: Text('诸葛'),
            radius: 200,
          ),
          Positioned(
            child: Container(
              color: Colors.red,
              padding: EdgeInsets.all(10),
              child: Text(
                '解1解',
                style: TextStyle(color: Colors.amber, fontSize: 30),
              ),
            ),
            top: 100,
            right: 50,
          ),
          Positioned(
            child: Container(
              color: Color.fromARGB(255, 206, 206, 13),
              padding: EdgeInsets.all(10),
              child: Text(
                '解2解',
                style: TextStyle(color: Colors.amber, fontSize: 30),
              ),
            ),
            top: 80,
            right: 50,
          ),
          Text(
            '蟑螂',
            style: TextStyle(color: Colors.green, fontSize: 50),
          ),
        ],
      ),
    );
  }
}
