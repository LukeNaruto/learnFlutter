import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('首页-Drawer'),
          leading: Icon(Icons.adb),
          actions: [Icon(Icons.settings)],
        ),
        body: CheckBoxDemo()
    );
  }
}

class CheckBoxDemo extends StatefulWidget {
  const CheckBoxDemo({super.key});

  @override
  State<CheckBoxDemo> createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {

   bool _checkboxVal = false;
   bool _checkboxVal1 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckboxListTile(
          // secondary:Icon(Icons.settings),
          // activeColor: Colors.amber,
          // checkColor: Colors.green,
          onChanged: (bool? val) {
            setState(() {
              print('$val');
              _checkboxVal = val!;
            });
          },
          value: _checkboxVal,
          selected: _checkboxVal,
          title:Text('CheckboxListTile1'),
          subtitle: Text('subTitle'),
        ),
        
        ListTile(
          leading: Checkbox(
            onChanged: (bool? val) {
              setState(() {
                print('$val');
                _checkboxVal1 = val!;
              });
            },
            value: _checkboxVal1,
          ),
          title: Text('Checkout'),
        )
      ],
    );
  }
}