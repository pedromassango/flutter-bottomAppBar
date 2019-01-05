import 'package:flutter/material.dart';

void main() => runApp(TabsApp());

class TabsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabs App',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  List<Widget> containers = [
    Container(
      color: Colors.pink,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.deepPurple,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Sample'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: '2018',
              ),
              Tab(
                text: '2019',
              ),
              Tab(
                text: '2020',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: containers,
        ),
      ),
    );
  }
}
