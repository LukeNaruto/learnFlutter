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
        body: TextFieldDemo()
    );
  }
}


class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  late String username;
  late String password;
  late String description;

  _register(){
    print('uersname- $username');
    print('password- $password');
    print('description- $description');
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          TextField(
            autofocus: true,
            keyboardType: TextInputType.phone,
            
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.phone_android),
              label: Text('手机号'),
              hintText:  '请输入手机号',
              focusColor: Colors.amber,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.yellow,
                  width: 4
                )
              )
            ),
            maxLength: 11,
            onChanged: (val){
              setState(() {
                username = val;
              });
            }
          ),
          
          TextField(
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.code_rounded),
              label: Text('密码'),
              hintText:  '请输入密码'
            ),
            onChanged: (val){
              setState(() {
                password = val;
              });
            }
          ),
          
          TextField(
            keyboardType: TextInputType.text,
            maxLines: 8,
            
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              label: Text('简介'),
              hintText:  '请介绍自己'
            ),
            onChanged: (val){
              setState(() {
                description = val;
              });
            }
          ),
          Container(
            width: double.infinity,
            child: 
              ElevatedButton(
                onPressed: (){
                  _register();
                }, 
                child: Text('确认')
              ),
          )
        ],
      ),
    );
  }
}