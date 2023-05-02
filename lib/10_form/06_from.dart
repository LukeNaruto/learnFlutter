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
  final _phone = TextEditingController();
  final _possword = TextEditingController();


  String _str='';
  String _str1='';
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
                  onSaved: (val){
                    print('*********--${val}');
                          _str = val!;
                  },
                ),
                TextFormField(
                  controller: _possword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: '密码'
                  ),
                  validator: (val) {
                    if(val!.length < 6){
                      return '密码不够';
                    }
                    return null;
                  },
                  onSaved: (val){
                    print('*********--${val}');
                          _str1 = val!;
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
                    
                    // print('1${_formKey!.currentState }-----------------------');
                    if(_formKey.currentState!.validate()){
                      print('提交成功');

                      print('1${_phone.text}-****--${_str}-${_str1}---**----222------------');
                      _formKey.currentState!.save();

                      // print('2${_possword.text}------------------');
                    }
                  },
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ElevatedButton(
                  child: Text('重置'),
                  onPressed: () {
                     _formKey.currentState!.reset();
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