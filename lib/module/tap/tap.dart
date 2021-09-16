import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tst_2021/shared/component/component.dart';
import 'package:tst_2021/shared/tst_bloc/cubit.dart';
import 'package:tst_2021/shared/tst_bloc/status.dart';

class Tap extends StatelessWidget {
  const Tap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Cubit_tst,Status>(
        builder: (context,status){
          Cubit_tst cubit  =  Cubit_tst.geter(context);
          List<Map> data = cubit.mydata_Done;
          return data.length>0 ?  ListView.separated(itemBuilder:(context,index) => item_node_style(cubit: cubit,data: data[index],index: index)
              , separatorBuilder:(context,index)=> line()
              , itemCount: data.length) : Check_tasks();},
        listener: (context,status){});
  }
}
