import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Button'),
          leading: Icon(Icons.menu),
          actions: [Icon(Icons.settings)],
          elevation: 0.0,
          centerTitle: true,
        ),
        body: ButtonDemo(),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          tooltip: 'Increment',
          child: Icon(Icons.add),
          backgroundColor: Colors.green,
          elevation: 0,
        )
      );
  }
}

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Wrap(
        children: [
          TextButton(
              onPressed: () {
                print('点击TextButton');
              },
              onLongPress: () {
                print('长按Textbutton');
              },
              child: Text('Text-Button')),
          ElevatedButton(
              onPressed: () {
                print('点击ElevatedButton');
              },
              onLongPress: () {
                print('长按ElevatedButton');
              },
              child: Text('ElevatedButton')),
          OutlinedButton(
              onPressed: () {
                print('点击OutlinedButton');
              },
              onLongPress: () {
                print('长按OutlinedButton');
              },
              child: Text('轮廓按钮'),
              style: ButtonStyle(
                  textStyle: MaterialStatePropertyAll(
                    TextStyle(fontSize: 30),
                  ),
                  foregroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      //按下按钮的前景色
                      return Colors.red;
                    }
                    // 默认状态的颜色
                    return Colors.blue;
                  }),
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      //按下按钮的前景色
                      return Colors.yellow;
                    }
                    // 默认状态的颜色
                    return Colors.white;
                  }),
                  shadowColor: MaterialStateProperty.all(Colors.yellow),
                  elevation: MaterialStateProperty.all(20),
                  side: MaterialStatePropertyAll(
                    BorderSide(color: Colors.greenAccent, width: 4),
                  ),
                  //声明按钮的形状
                  shape: MaterialStatePropertyAll(StadiumBorder(
                      side: BorderSide(color: Colors.green, width: 2))),
                  // 设置按钮大小
                  minimumSize: MaterialStatePropertyAll(Size(150, 60)),
                  //设置水波纹的颜色
                  overlayColor: MaterialStatePropertyAll(Colors.purple))),
          OutlinedButtonTheme(
              data: OutlinedButtonThemeData(
                  style: ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(Colors.pink))),
              child: OutlinedButton(
                  onPressed: () {
                    print('点击OutlinedButton');
                  },
                  onLongPress: () {
                    print('长按OutlinedButton');
                  },
                  child: Text('主题轮廓按钮'),
                  style: ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(Colors.green)))),
          IconButton(
            onPressed: () {
              print('IconButton');
            },
            icon: Icon(Icons.ac_unit_outlined),
            color: Colors.red,
            splashColor: Colors.lightBlue,
            highlightColor: Colors.purple,
            tooltip: '怎么了',
          ),
          TextButton.icon(
            icon: Icon(Icons.add_circle),
            label: Text('文本按钮'),
            onPressed: () {
              print('文本按钮');
            },
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.abc_sharp),
            label: Text('凸起按钮')
          ),
          OutlinedButton.icon(
            onPressed: () {

            }, 
            icon: Icon(Icons.access_alarms_rounded), 
            label: Text('轮廓按钮')
          ),
          Container(
            color: Colors.pink[100],
            width: double.infinity,
            child: ButtonBar(
              children: [
                ElevatedButton(
                  onPressed: () {}, 
                  child: Text('按钮一')
                ),
                ElevatedButton(
                  onPressed: () {}, 
                  child: Text('按钮二')
                ),
                ElevatedButton(
                  onPressed: () {}, 
                  child: Text('按钮三')
                ),
                ElevatedButton(
                  onPressed: () {}, 
                  child: Text('按钮四')
                ),
                ElevatedButton(
                  onPressed: () {}, 
                  child: Text('按钮五')
                ),
              ],
            ),
          ),
          BackButton(
            color: Colors.red,
            onPressed: (){},
          ),
          CloseButton(
            color: Colors.pink,
          )
        ],
      ),
    );
  }
}
