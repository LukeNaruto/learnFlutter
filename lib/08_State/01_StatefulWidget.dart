import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('状态管理'),
          leading: Icon(Icons.adb),
          actions: [Icon(Icons.settings)],
        ),
        body: Mystate());
  }
}
class Mystate extends StatefulWidget {
  const Mystate({super.key});

  @override
  State<Mystate> createState() => _MystateState();
}

class _MystateState extends State<Mystate> {
  int _num = 0;
  void _increment() {
    setState(() {
      _num++;
    });
  }
  void _decrement() {
    setState(() {
      _num--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text('数字${_num}'),
          ),
          ElevatedButton(
            child: Icon(Icons.add),
            onPressed: _increment,
          ),
          ElevatedButton(
            child: Icon(Icons.remove),
            onPressed: _decrement,
            onLongPress: _decrement
          )
        ],
      ),
    );
  }
}
