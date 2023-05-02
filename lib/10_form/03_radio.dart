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
        body: RadioDemo()
    );
  }
}

class RadioDemo extends StatefulWidget {
  const RadioDemo({super.key});

  @override
  State<RadioDemo> createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {

  int gender = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('男'),
              Radio(
                value: 1, 
                groupValue: gender, 
                onChanged: (val){
                  setState(() {
                    gender = val!;
                  });
                }
              ),
              Text('女'),
              Radio(
                value: 2, 
                groupValue: gender, 
                onChanged: (val){
                  setState(() {
                    gender = val!;
                  });
                }
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(gender == 1 ? '男' : '女')
            ],
          ),
          RadioListTile(
            value: 1, 
            groupValue: gender, 
            onChanged: (val){
              setState(() {
                gender = val!;
              });
            },
            title: Text('男'),
            subtitle: Text('有胡子'),
            secondary: Icon(Icons.man),
            selected: gender == 1,
          ),
          RadioListTile(
            value: 2, 
            groupValue: gender, 
            onChanged: (val){
              setState(() {
                gender = val!;
              });
            },
            title: Text('女'),
            subtitle: Text('没有胡子'),
            secondary: Icon(Icons.woman),
            selected: gender == 2,
          ),
        ],
      ),
    );
  }
}