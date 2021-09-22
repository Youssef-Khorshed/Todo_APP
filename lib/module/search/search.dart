import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tst_2021/shared/component/component.dart';
import 'package:tst_2021/shared/newcubit/newscubit.dart';
import 'package:tst_2021/shared/newcubit/newsstatus.dart';

class Search extends StatelessWidget {
  TextEditingController text = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: BlocConsumer<NewsCubit,Newsstatus>(
          listener:(context,status){} ,
          builder: (context,status)
          {

            return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: textformfield(
                      text: 'Search',
                      prefix_icon: Icon(Icons.search),
                      keyboard_type: TextInputType.text,
                      pass: text,
                      radius: 10,
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Search is empty';
                        }
                      },
                      onchange: (value){
                         NewsCubit.get(context).get_sarch_data(data: value);
                      }

                  ),
                ),
            NewsCubit.search_list.length>0 ?
            Expanded(
              child: ListView.separated
          (itemBuilder: (context,index)=>news_item(context,NewsCubit.search_list[index]),
          separatorBuilder: (context,index)=>line(),
          itemCount: NewsCubit.search_list.length),
            ) : Center(child: CircularProgressIndicator())

              ],
            ),
          );},
        ));
  }
}
