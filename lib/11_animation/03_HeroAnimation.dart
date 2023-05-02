import 'package:flutter/material.dart';
import 'ImageDetail.dart';


class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HeroAnimation'),
          leading: Icon(Icons.adb),
          actions: [Icon(Icons.settings)],
        ),
        body: HeroAnimation()
    );
  }
}

class HeroAnimation extends StatefulWidget {
  const HeroAnimation({super.key});

  @override
  State<HeroAnimation> createState() => _HeroAnimationState();
}

class _HeroAnimationState extends State<HeroAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: GridView.extent(
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 20,
        children: List.generate(20, (index) {
          String imageUrl = 'https://picsum.photos/id/$index/300/400';
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ImageDetail(imageUrl);
                  },
                )
              );
            },
            child: Hero(
              tag: imageUrl,
              transitionOnUserGestures:true,
              child: Image.network(imageUrl),
            ),
          );
        })
      ),
    );
  }
}