import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('首页-Drawer'),
          leading: Icon(Icons.adb),
          actions: [Icon(Icons.settings)],
        ),
        body: Container(
          child: Center(child: Text('Home')),
        ),
        drawer: DrawerList(),
        endDrawer: DrawerList(),
    );
  }
}

class DrawerList extends StatelessWidget {
  const DrawerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          // Text('ddd')
          UserAccountsDrawerHeader(
            accountName: Text('Tom'), 
            accountEmail: Text('google@gmail.com'),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg1.jpg'),
                fit: BoxFit.cover
              )
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/bg2.jpg'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('设置'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          Divider(thickness:2),
          ListTile(
            leading: Icon(Icons.account_balance),
            title: Text('余额'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('我的'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('back'),
            onTap: () => Navigator.pop(context),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          AboutListTile(
            child: Text('关于'),
            applicationName: 'bihuo ',
            applicationVersion: '1.0.32',
            icon: CircleAvatar(
              backgroundColor: Colors.amber,
              child: Text('ds'),
            ),
            applicationLegalese: '法律条例',
            aboutBoxChildren: [
              Text('条例1.。。'),
              Text('条例2.。。'),
              Text('条例3.。。'),
            ],
            applicationIcon: CircleAvatar(
              backgroundImage: AssetImage('images/bg3.webp'),
            )
            
          )
        ],
      ),
    );
  }
}