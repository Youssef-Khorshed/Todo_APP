import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:tst_2021/layout/layout.build/navigation.dart';
import 'package:tst_2021/module/tst_file/tst.dart';
import 'package:tst_2021/shared/bloc_tracing/bloc_tst.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:Colors.myco
      ),

      home: TST(),

    );

  }

}
