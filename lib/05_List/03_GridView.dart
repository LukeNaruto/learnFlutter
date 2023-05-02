import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid_view'),
        leading: Icon(Icons.adb),
        actions: [Icon(Icons.settings)],
      ),
      body: StackDemo()
    );
  }
}

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 10,
          childAspectRatio: 1.5
        ),
        children: [
          Container(color: Colors.amber,),
          Container(color: Color.fromARGB(255, 9, 184, 56),),
          Container(color: Color.fromARGB(255, 232, 42, 8),),
          Container(color: Color.fromARGB(255, 26, 8, 227),),
          Container(color: Color.fromARGB(255, 179, 17, 87),),
          Container(color: Color.fromARGB(255, 23, 157, 43),),
          Container(color: Color.fromARGB(255, 32, 157, 164),),
          Container(color: Colors.amber,),
          Container(color: Color.fromARGB(255, 181, 27, 189),),
          Container(color: Color.fromARGB(255, 16, 68, 39),),
        ],
      ),
    );
  }
}
