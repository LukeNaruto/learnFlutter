import 'package:flutter/material.dart';
import 'dart:math';

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
  late Animation sizeAnimation;
  late Animation colorAnimation;
  late Animation rotationAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3)
    );

    animation = CurvedAnimation(
      parent: _controller, 
      curve: Interval(0.0, .5)
    )..addListener(() {
      setState(() {
        
      });
    })..addStatusListener((status) {
      print('*********$status');
      if (status == AnimationStatus.completed){
        _controller.reverse();
      } else if(status == AnimationStatus.dismissed){
        _controller.forward();
      }
    });

    sizeAnimation = Tween(
      begin: 0.0, 
      end: 200.0
    ).animate(_controller);

    colorAnimation = ColorTween(
      begin: Colors.amber, 
      end: Colors.pink
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(.5, .8, curve: Curves.bounceOut)
    ))..addListener(() {
      setState(() {
        
      });
    });

    rotationAnimation = Tween(begin: 0.0, end: 2*pi).animate(
      CurvedAnimation(
        parent: _controller, 
        curve: Interval(.8, 1.0, curve: Curves.easeIn)
      )
    );


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
              // animation.addStatusListener((status) {
              //   // print('*********$status');
              //   if (status == AnimationStatus.completed){
              //     _controller.reverse();
              //   } else if(status == AnimationStatus.dismissed){
              //     _controller.forward();
              //   }
              // });
                _controller.forward();
            }, 
            child: Text('反复')
          ),
          ElevatedButton(
            onPressed: (){
              _controller.stop();
            }, 
            child: Text('停止')
          ),
          Opacity(
            opacity: _controller.value,
            child: Transform.rotate(
              angle: rotationAnimation.value,
              child: Container(
                width: sizeAnimation.value,
                height: sizeAnimation.value,
                color: colorAnimation.value,
              ),
            ),
          )
        ],
      ),
    );
  }
}
