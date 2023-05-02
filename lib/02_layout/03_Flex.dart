import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flex'),
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.settings)],
        centerTitle: true,
      ),
      body: FlexDemo(),
    );
  }
}

class FlexDemo extends StatelessWidget {
  const FlexDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              color: Colors.lightBlueAccent,
              height: 150,
              width: 40,
            ),
            Expanded(
                child: Container(
              color: Colors.lightGreen,
              height: 50,
            ))
          ],
        ),
        Flex(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          direction: Axis.horizontal,
          textDirection: TextDirection.ltr,
          children: [
            Icon(Icons.accessibility_new, size: 60),
            Icon(
              Icons.accessible_sharp,
              size: 60,
            ),
            Icon(Icons.account_box_outlined, size: 60),
            Icon(Icons.adb_rounded, size: 60),
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
              flex: 40,
              child: Container(
                color: Colors.amber,
                height: 50,
                width: 50,
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                color: Colors.cyan,
                height: 50,
                width: 50,
              ),
            )
          ],
        ),
        Container(
          height: 150,
          width: double.infinity,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.green, width: 2, style: BorderStyle.solid)),
          child: Flex(
            direction: Axis.vertical,
            verticalDirection: VerticalDirection.up,
            children: [
              Expanded(
                flex: 40,
                child: Container(
                  color: Colors.amber,
                  height: 50,
                  width: 200,
                ),
              ),
              Spacer(
                flex: 10,
              ),
              Expanded(
                flex: 10,
                child: Container(
                  color: Colors.cyan,
                  height: 50,
                  width: 50,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
