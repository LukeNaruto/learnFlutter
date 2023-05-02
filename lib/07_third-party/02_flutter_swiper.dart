import 'package:flutter/material.dart';
// import 'package:dio/dio.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('轮播图'),
          leading: Icon(Icons.adb),
          actions: [Icon(Icons.settings)],
        ),
        body: FlutterSwiperDemo());
  }
}

class FlutterSwiperDemo extends StatelessWidget {
  FlutterSwiperDemo({super.key});
  final List<String> imgs = [
    'images/bg1.jpg',
    'images/bg2.jpg',
    'images/bg3.webp',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 200,
          child: Swiper(
            itemCount: imgs.length,
            itemBuilder: (ctx, index) {
              return Image.asset(imgs[index], fit: BoxFit.cover);
            },
            // 轮播图的指示点
            pagination: SwiperPagination(),
            control: SwiperControl(),
          ),
        ),
        Container(
          height: 200,
          child: Swiper(
            itemCount: imgs.length,
            itemBuilder: (ctx, index) {
              return Image.asset(imgs[index], fit: BoxFit.cover);
            },
            viewportFraction: .7,
            scale: .7,
            
          ),
        ),
        Container(
          height: 200,
          child: Swiper(
            itemCount: imgs.length,
            itemBuilder: (ctx, index) {
              return Image.asset(imgs[index], fit: BoxFit.cover);
            },
            itemWidth: 300,
            itemHeight: 180,
            layout: SwiperLayout.TINDER,
          ),
        )
      ],
    );
  }
}
