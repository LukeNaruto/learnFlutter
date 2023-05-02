import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('图片'),
          leading: Icon(Icons.adb),
          actions: [Icon(Icons.settings)],
        ),
        body: ImageDemo());
  }
}

class ImageDemo extends StatelessWidget {
  const ImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'images/bg1.jpg',
          width: 200,
          height: 200,
          fit: BoxFit.fitHeight
        ),
        Image.network(
          'https://img-baofun.zhhainiao.com/pcwallpaper_ugc/static/b1d73af70fdcafc7d456420b4dfa43e9.jpg?x-oss-process=image%2fresize%2cm_lfit%2cw_1920%2ch_1080',
          repeat: ImageRepeat.repeatY,
          colorBlendMode: BlendMode.color,
          // color: Colors.amber,
          // width: 200,
          // height: 200,
        ),
        Image.asset('images/bg2.jpg'),
        Image.asset('images/bg3.webp')
      ],
    );
  }
}
