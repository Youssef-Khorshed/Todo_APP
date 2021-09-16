import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tst_2021/shared/bloc_counter/cubit.dart';
import 'package:tst_2021/shared/bloc_counter/status.dart';

class Count extends StatelessWidget {

//widget
//inti state
// state
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create:(context)=> Cubitc(),
      child: BlocConsumer<Cubitc,MYStatus>(
        builder:(context,state) =>Scaffold(
          appBar: AppBar(
            title: Text('count',),
          ) ,
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: (){ Cubitc.get(context).plus();number++;print(number);}, child: Text('inc',style: TextStyle(fontSize: 30),)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Text('$number',style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                ),
                TextButton(onPressed: (){ Cubitc.get(context).minus();number--;print(number);}, child: Text('dec',style: TextStyle(fontSize: 30)))

              ],
            ),
          ),
        ),
        listener:(context,state){

        } ,

      ),

    );
  }
}
