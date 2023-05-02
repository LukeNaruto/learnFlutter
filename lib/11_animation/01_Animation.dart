import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Animation'),
          leading: Icon(Icons.adb),
          actions: [Icon(Icons.settings)],
        ),
        body: AnimationDemo()
    );
  }
}

class AnimationDemo extends StatefulWidget {
  const AnimationDemo({super.key});

  @override
  State<AnimationDemo> createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationDemo>
    with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation animation;


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500
      )
    );
    // 声明动画曲线
    animation = CurvedAnimation(
      parent: _controller, 
      curve: Curves.bounceIn
    );

    animation = Tween(begin: 50.0, end: 300.0).animate(_controller);

    animation.addListener(() {
      print('***********');
      print(animation.value);
      print(_controller.value);
      setState(() {
        
      });
    });
    _controller.forward();

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Icon(
            Icons.favorite,
            color: Colors.amber,
            size: animation.value
          ),
          Opacity(
            opacity: _controller.value,
            child: Text('Hello World')
          ),
          ElevatedButton(
            onPressed: (){
              // animation.removeStatusListener((status) { })
              _controller.forward();
            }, 
            child: Text('放大')
          ),
          ElevatedButton(
            onPressed: (){
              _controller.reverse();
            }, 
            child: Text('缩小')
          ),
          ElevatedButton(
            onPressed: (){
              animation.addStatusListener((status) {
                // print('*********$status');
                if (status == AnimationStatus.completed){
                  _controller.reverse();
                } else if(status == AnimationStatus.dismissed){
                  _controller.forward();
                }
                _controller.reverse();
              });
            }, 
            child: Text('反复')
          ),
        ],
      ),
    );
  }
}