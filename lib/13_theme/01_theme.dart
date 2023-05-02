import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('主题theme'),
      ),
      body:ThemeDemo()
    );
  }
}

class ThemeDemo extends StatelessWidget {
  const ThemeDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Global Headline1', style: Theme.of(context).textTheme.headline1),
          Text('Global Headline6', style: Theme.of(context).textTheme.headline6),
          Text('Global BodyText2', style: Theme.of(context).textTheme.bodyText2),
          SizedBox(height: 16),
          Text('Local Headline1', style: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold, color: Colors.red)),
          Text('Local Headline6', style: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic, color: Colors.red)),
          Text('Local BodyText2', style: TextStyle(fontSize: 14.0, fontFamily: 'Hind', color: Colors.red)),
          SizedBox(height: 16),
          RaisedButton(onPressed: () {}, child: Text('Global RaisedButton')),
          FlatButton(onPressed: () {}, child: Text('Global FlatButton')),
          IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
          SizedBox(height: 16),
          RaisedButton(onPressed: () {}, child: Text('Local RaisedButton'), color: Colors.red),
          FlatButton(onPressed: () {}, child: Text('Local FlatButton'), textColor: Colors.red),
          IconButton(icon: Icon(Icons.favorite), onPressed: () {}, color: Colors.red),
          SizedBox(height: 16),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Global Card'),
            ),
          ),
          SizedBox(height: 16),
          Card(
            color: Colors.red.shade100,
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Local Card'),
            ),
          ),
        ],
      ),
    );
  }
}