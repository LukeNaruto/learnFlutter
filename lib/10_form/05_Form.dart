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
        body: FormDemo()
    );
  }
}

class FormDemo extends StatefulWidget {
  const FormDemo({super.key});

  @override
  State<FormDemo> createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final  _phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _phone,
                  decoration: InputDecoration(
                    hintText: '手机号'
                  ),
                  validator: (val) {
                    RegExp reg = RegExp(r'^\d{11}$');
                    if(!reg.hasMatch(val!)){
                      return '手机号不合适';
                    }
                    return null;
                  },
                )
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  child: Text('提交'),
                  onPressed: () {
                      print('提交${_phone.text}');
                    if(_formKey.currentState!.validate()){
                      print('提交成功${_formKey.currentState}');
                    }
                  },
                ),
              )
            ],
          )
        ]
      ),
    );
  }
}