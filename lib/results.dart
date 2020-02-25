import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Results extends StatefulWidget {
  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return Container(
       color: Colors.white,
        padding: EdgeInsets.all(20.0),
        child: Table(
          border: TableBorder.all(color: Colors.black),
          children: [
            TableRow(children: [
              Text('Cell 1'),
              Text('Cell 2'),
              Text('Cell 3'),
            ]),
            TableRow(children: [
              Text('Cell 4'),
              Text('Cell 5'),
              Text('Cell 6'),
            ])
          ],
        ),
      
    );
  }
}