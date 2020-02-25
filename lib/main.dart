import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bullshit Detector',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'BsDetector'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[950],
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
        backgroundColor: Colors.grey[850],
      ),
         body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             Center(
              child: CircleAvatar(
                  backgroundImage: AssetImage('assets/icon/icon.png'), 
                  radius: 40.0),
            ),
          Divider(height: 70, color:Colors.grey[400]),
           SizedBox(height:50),
            Text(
              'Please enter the article below',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
    SizedBox(height:30),
            TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: "Search",
              ),
            ),
                    
                    SizedBox(height:80),
            Center(
             
              child: RaisedButton(
              onPressed: null,
              child: Text('Look up',style: TextStyle(fontSize: 20 ,color: Colors.red, letterSpacing: 2.0),),
              color: Colors.grey[950],
              
              
            ),)
         
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
