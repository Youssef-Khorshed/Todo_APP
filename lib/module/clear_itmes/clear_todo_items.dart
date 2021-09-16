import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tst_2021/shared/component/component.dart';
import 'package:tst_2021/shared/tst_bloc/cubit.dart';
import 'package:tst_2021/shared/tst_bloc/status.dart';

class Clear_itmes extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Cubit_tst,Status>(
        builder: (context,status){
          return Container(
            child: Center(child: DefaultButton
              (
              text: 'clear',
              controll:(){
              }
            ),),
          );
        }
        , listener: ((context,status){}));
  }
}
