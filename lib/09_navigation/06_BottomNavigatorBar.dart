import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<BottomNavigationBarItem> bottomNaviItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: '首页',
      backgroundColor: Colors.blue
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.message),
      label: '消息',
      backgroundColor: Color.fromARGB(255, 189, 200, 25)
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      label: '购物车',
      backgroundColor: Color.fromARGB(255, 23, 188, 34)
    )
  ];
  final List<Widget> pages = [
    Center(
      child: Text(
        'Home',
        style: TextStyle(
          fontSize: 50
        ),
      ),
      
    ),
    Center(
      child: Text(
        'message',
        style: TextStyle(
          fontSize: 50
        ),
      ),
      
    ),
    Center(
      child: Text(
        'cart',
        style: TextStyle(
          fontSize: 50
        ),
      ),
      
    ),
  ];
  late int currentIndex;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = 0;
  }

  void _changePage(int index){
    if( index != currentIndex) {
      setState(() {
        currentIndex = index;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('底部导航'),
          leading: Icon(Icons.adb),
          actions: [Icon(Icons.settings)],
        ),
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: bottomNaviItems,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          // type: BottomNavigationBarType.shifting,
          onTap: (index){
            _changePage(index);
          },
        ),
    );
  }
}



