import 'dart:io';
import 'package:flutter/material.dart';
import 'package:kgpapp/developer.dart';


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("KGPApp"),
        elevation: .8,
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height : 100.0,
              child  : DrawerHeader(
                child  : Image.asset('assets/logoWideWhite.png',),
                decoration: BoxDecoration(color: Colors.transparent),
                margin : EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 160.0, 10.0),
              ),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("About Developer"),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Developer(),
                  )
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Exit"),
              onTap: (){
                exit(0);
              },
            ),
          ],
        ),
      ),
    );
  }
}
