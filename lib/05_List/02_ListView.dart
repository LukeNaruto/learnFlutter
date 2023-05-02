import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List-View'),
          leading: Icon(Icons.adb),
          actions: [Icon(Icons.settings)],
        ),
        body: ListViewDemo());
  }
}

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListViewBacic(), 
          ListViewHorizontal(), 
          ListViewBuilder(), 
          ListViewSeperatedDemo()
        ],
      ),
    );
  }
}

class ListViewBacic extends StatelessWidget {
  const ListViewBacic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.black12,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ListTile(
            title: Text('张三'),
            leading: Icon(Icons.access_alarm),
            subtitle: Text('子标题'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            title: Text('张三1'),
            leading: Icon(Icons.access_alarm),
            subtitle: Text('子标题1'),
            trailing: Icon(Icons.keyboard_arrow_right),
            selected: true,
            selectedColor: Colors.pink,
          ),
          ListTile(
            title: Text('张三2'),
            leading: Icon(Icons.access_alarm),
            subtitle: Text('子标题2'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            title: Text('张三3'),
            leading: Icon(Icons.access_alarm),
            subtitle: Text('子标题3'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            title: Text('张三4'),
            leading: Icon(Icons.access_alarm),
            subtitle: Text('子标题4'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
        ],
      ),
    );
  }
}

class ListViewHorizontal extends StatelessWidget {
  const ListViewHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.blue[50],
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 160,
            child: Image.asset('images/bg1.jpg'),
            color: Colors.amber,
          ),
          Container(
            width: 160,
            color: Colors.black12,
          ),
          Container(
            width: 160,
            color: Colors.blue,
            child: Image.asset('images/bg2.jpg'),
          ),
          Container(
            width: 160,
            color: Colors.pinkAccent,
          ),
          Container(
            width: 160,
            child: Image.asset('images/bg3.webp'),
            color: Color.fromARGB(255, 21, 155, 9),
          ),
        ],
      ),
    );
  }
}

class ListViewBuilder extends StatelessWidget {
  ListViewBuilder({super.key});
  final List<Widget> users = List<Widget>.generate(20, (index) {
    return OutlinedButton(
        onPressed: () {},
        child: Text('姓名 $index'),
        style:
            ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.all(5))));
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return users[index];
        },
        itemCount: users.length,
        itemExtent: 30,
      ),
    );
  }
}

class ListViewSeperatedDemo extends StatelessWidget {
  ListViewSeperatedDemo({super.key});

  final List<Widget> products = List.generate(
      20,
      (index) => ListTile(
            title: Text('商品$index'),
            leading: Icon(Icons.access_alarm),
            subtitle: Text('子标题'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ));
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        ListTile(
          title: Text('商品列表'),
        ),
        Container(
          height: 200,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return products[index];
            },
            // 分割器的构造器
            separatorBuilder: (context, index) {
              return Divider(
                thickness: 2,
                color: index%2 == 0 ? Colors.red :Color.fromARGB(255, 17, 200, 56)
              );
            },
            itemCount: products.length
          ),
        )
      ],
    );
  }
}
