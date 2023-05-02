import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Wrap'),
          leading: Icon(Icons.menu),
          actions: [Icon(Icons.settings)],
          centerTitle: true,
        ),
        body: WrapDemo());
  }
}

class WrapDemo extends StatelessWidget {
  WrapDemo({super.key});

  final List<String> _list = ['曹操', '司马懿', '曹仁', '曹洪', '张辽', '许诸'];

  List<Widget> _weiguo() {
    return _list
        .map(((item) => Chip(
              label: Text(item),
              avatar: CircleAvatar(
                backgroundColor: Colors.red,
                child: Text('魏'),
              ),
            )))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Wrap(
          children: _weiguo(),
          spacing: 10,
          runSpacing: 20,
          alignment: WrapAlignment.spaceAround,
          // runAlignment: WrapAlignment.end,
        ),
        Wrap(
          children: [
            Chip(
              label: Text('刘2备'),
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text('蜀')),
            ),
            Chip(
              label: Text('诸葛亮'),
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text('蜀')),
            ),
            Chip(
              label: Text('关羽'),
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text('蜀')),
            ),
            Chip(
              label: Text('张飞'),
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text('蜀')),
            ),
            Chip(
              label: Text('赵云'),
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text('蜀')),
            ),
            Chip(
              label: Text('黄忠'),
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text('蜀')),
            ),
          ],
        )
      ],
    );
  }
}
