import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dio-请求'),
          leading: Icon(Icons.adb),
          actions: [Icon(Icons.settings)],
        ),
        body: DioDemo());
  }
}

class DioDemo extends StatelessWidget {
  const DioDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('dio点击请求'),
        onPressed: () {
          print('dio请求');
          getIpAdress();
        },
      ),
    );
  }

  void getIpAdress() async {
    try {
      final url = 'https://httpbin.org/ip';
      Response response = await Dio().get(url);
      print('${response}');
      String ip = response.data['origin'];
      print(ip);
    } catch (e) {
      print('error-----$e');
    }
  }
}
