import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  Home({super.key});

  final List<Widget> _tabs = [
    Tab(child: Text('首页'), icon: Icon(Icons.home),),
    Tab(child: Text('添加'), icon: Icon(Icons.add),),
    Tab(child: Text('搜索'), icon: Icon(Icons.search),),
  ];

  final List<Widget> _tabViews = [
    Icon(Icons.home, size: 120 ,color: Colors.amber),
    Icon(Icons.home, size: 120 ,color: Color.fromARGB(255, 49, 15, 142)),
    Icon(Icons.home, size: 120 ,color: Color.fromARGB(255, 123, 12, 38)),
  ];

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: _tabs.length, 
      child: Scaffold(
        appBar: AppBar(
          title: Text('首页-Drawer'),
          leading: Icon(Icons.adb),
          actions: [Icon(Icons.settings)],
          bottom: TabBar(
            tabs: _tabs,
            labelColor: Color.fromARGB(255, 130, 22, 49),
            unselectedLabelColor: Colors.black45,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1,
            indicatorColor: Colors.pink,
          )
        ),
        body: TabBarView(children: _tabViews,),
        bottomNavigationBar: TabBar(
          tabs: _tabs,
          labelColor: Color.fromARGB(255, 161, 22, 68),
          unselectedLabelColor: Colors.black45,
          indicatorSize: TabBarIndicatorSize.label,
        ),
      )
    );

  }
}

