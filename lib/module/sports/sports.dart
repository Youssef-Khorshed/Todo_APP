
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tst_2021/shared/component/component.dart';
import 'package:tst_2021/shared/newcubit/newscubit.dart';
import 'package:tst_2021/shared/newcubit/newsstatus.dart';

import '../../main.dart';

class Sports extends StatelessWidget {
  const Sports({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,Newsstatus>(
        builder: (context,status){
          return NewsCubit.sports_list.length>0 ? ListView.separated
            (itemBuilder: (context,index)=>news_item(context,NewsCubit.sports_list[index]),
              separatorBuilder: (context,index)=>line(),
              itemCount: NewsCubit.sports_list.length) : Center(child: CircularProgressIndicator()) ;},
        listener: (context,status){});
  }
}
