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

    return ShareDataWidget(
      counter: _num, 
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              // child: Text('数字${_num}'),
              child: MyCounter(),
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
      )
    );
  }
}

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  @override
  Widget build(BuildContext context) {
    return Text(ShareDataWidget.of(context)!.counter.toString());
  }
}


class ShareDataWidget extends InheritedWidget {
  ShareDataWidget({super.key,required this.counter, required child}) : super(child: child);

  // final Widget child;
  final int counter;

  static ShareDataWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ShareDataWidget>()!;
  }

  @override
  bool updateShouldNotify(ShareDataWidget oldWidget) {
    return true;
  }
}

