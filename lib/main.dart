import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = "KGPApp";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text(title),
            ),
            ListTile(
              title: Text('MFQP'),
              onTap: () {},
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}