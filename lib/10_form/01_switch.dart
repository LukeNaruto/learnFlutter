import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
        body: SwitchDemo(),
    );
  }
}

class SwitchDemo extends StatefulWidget {
  const SwitchDemo({super.key});

  @override
  State<SwitchDemo> createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {

  bool _switchValue = false;
  bool _switchValueIOS = false;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            leading: Switch(
              value: _switchValue, 
              onChanged: (curVal){
                setState(() {
                  _switchValue = curVal;
                });
              },
              activeColor: Colors.red,
              activeTrackColor: Colors.green,
            ),
            title: Text('当前的状态是${_switchValue ? '选中' : '未选中'}'),
          ),
          ListTile(
            leading: CupertinoSwitch(
              value: _switchValueIOS,
              onChanged: (curval) {
                setState(() {
                  _switchValueIOS = curval;
                });
              },
              activeColor: Colors.red,
            ),
            title: Text('IOS-Switch')
          )
        ],
      ),
    );
  }
}