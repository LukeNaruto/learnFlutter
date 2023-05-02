import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('本地存储'),
          leading: Icon(Icons.adb),
          actions: [Icon(Icons.settings)],
        ),
        body: SharedPreferencesDemo());
  }
}

class SharedPreferencesDemo extends StatefulWidget {
  const SharedPreferencesDemo({super.key});
  @override
  SharedPreferencesDemoState createState() => SharedPreferencesDemoState();
}

class SharedPreferencesDemoState extends State<SharedPreferencesDemo> {
  // SharedPreferencesDemoState({super.key});
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late int _counter;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Text('${_counter}'),
          ElevatedButton(
            onPressed: _incrementCounter,
            child: Text('递增'),
          ),
          ElevatedButton(
            onPressed: _decrementCounter,
            child: Text('递减'),
          ),
          ElevatedButton(
            onPressed: _removeCounter,
            child: Text('删除'),
          ),
          ElevatedButton(
            onPressed: _setList,
            child: Text('setStringList'),
          ),
          // ElevatedButton(
          //   onPressed: _removeCounter,
          //   child: Text('setData'),
          // )
        ],
      ),
    );
  }

  Future<void> _setList() async {
    final SharedPreferences prefs = await _prefs;
    final List<String> list1 = (prefs.getStringList('List') ?? []);
    list1.add('${_counter ?? 0}');
    await prefs.setStringList('List', list1);
    print('$list1');
  }

  Future<void> _incrementCounter() async {
    final SharedPreferences prefs = await _prefs;
    final int counter = (prefs.getInt('counter') ?? 0) + 1;

    await prefs.setInt('counter', counter);
    print('$counter');
    _counter = counter;
  }

  Future<void> _decrementCounter() async {
    final SharedPreferences prefs = await _prefs;
    final int counter = (prefs.getInt('counter') ?? 0) - 1;

    await prefs.setInt('counter', counter);
    print('$counter');
    _counter = counter;
  }

  Future<void> _removeCounter() async {
    final SharedPreferences prefs = await _prefs;
    final int counter = (prefs.getInt('counter') ?? 0);

    await prefs.remove('counter');
    print('$counter');
    _counter = counter;
  }
}
