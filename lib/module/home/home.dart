import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(
  leading: Icon(Icons.ac_unit),
  title: Container(alignment:Alignment.center,child: Text('hello',style: TextStyle(fontSize: 20),)),

),
    body:null,
    );
  }
}
