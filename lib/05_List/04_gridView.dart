import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Grid_view_build'),
          leading: Icon(Icons.adb),
          actions: [Icon(Icons.settings)],
        ),
        // body: GridViewCountDemo()
        // body: GridViewExtentDemo());GridViewBulderDemo
        body: GridViewBulderDemo());
  }
}

class GridViewCountDemo extends StatelessWidget {
  const GridViewCountDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        children: List.generate(
            20,
            (index) => Image.asset(
                  'images/bg${index % 2 + 1}.jpg',
                )),
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        childAspectRatio: 1.5,
      ),
    );
  }
}

class GridViewExtentDemo extends StatelessWidget {
  const GridViewExtentDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.extent(
        children: List.generate(
            20,
            (index) => Image.asset(
                  'images/bg${index % 2 + 1}.jpg',
                )),
        // crossAxisCount: 2,
        maxCrossAxisExtent: 380,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        childAspectRatio: 1.5,
      ),
    );
  }
}

class GridViewBulderDemo extends StatelessWidget {
  GridViewBulderDemo({super.key});
  final List<dynamic> _tiles = [
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Color.fromARGB(255, 9, 184, 56),
    ),
    Container(
      color: Color.fromARGB(255, 232, 42, 8),
    ),
    Container(
      color: Color.fromARGB(255, 26, 8, 227),
    ),
    Container(
      color: Color.fromARGB(255, 179, 17, 87),
    ),
    Container(
      color: Color.fromARGB(255, 23, 157, 43),
    ),
    Container(
      color: Color.fromARGB(255, 32, 157, 164),
    ),
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Color.fromARGB(255, 181, 27, 189),
    ),
    Container(
      color: Color.fromARGB(255, 16, 68, 39),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        // children: List.generate(20, (index) =>
        //   Image.asset(
        //     'images/bg${index % 2 + 1}.jpg',
        //   )
        // ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 1.5
        ),
        itemBuilder: (ctx, index) {
          return _tiles[index];
        },
        itemCount: _tiles.length,
        // crossAxisCount: 2,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        physics: BouncingScrollPhysics(), // 反弹效果
        // physics: ClampingScrollPhysics(), // 夹住效果
        // physics: AlwaysScrollableScrollPhysics(), // 滚动
        // physics: NeverScrollableScrollPhysics(), // 禁止滚动
        
      ),
    );
  }
}
