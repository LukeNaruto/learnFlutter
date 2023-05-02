import 'package:flutter/material.dart';
import 'dart:math';

class ImageDetail extends StatelessWidget {
  ImageDetail(this.imageUrl);
  final String imageUrl;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black38,
        body: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Hero(
              tag: imageUrl,
              child: Image.network(
                imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              
            ),
          ),
        )
    );
  }
}