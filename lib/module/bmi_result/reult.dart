import 'dart:math';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String gender;
  final int age;
  final int height;
  final int weight;
  final double calc;
  Result({required this.calc,required this.gender,required this.age,required this.weight,required this.height});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0E5D8),
      appBar: AppBar(
        leading: IconButton(onPressed:(){Navigator.pop(context);} ,icon: Icon(Icons.arrow_back),),
        title: Text('Result'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(color: Color(0xFFBBDFC8),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Gender:  ${gender}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
              , Text('Age:  ${age}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
              , Text('Normal BMI:  ${(weight/pow(height/100, 2)).round()}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                , Text('Minimum Calories needed:  ${((weight*calc*24)+(weight*calc*24*0.5)).round()}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                , Text('Maximum Calories needed:  ${((weight*calc*24)+(weight*calc*24*0.7)).round()}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
