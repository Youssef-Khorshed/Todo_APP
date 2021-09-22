import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tst_2021/module/search/search.dart';
import 'package:tst_2021/shared/component/component.dart';
import 'package:tst_2021/shared/newcubit/newscubit.dart';
import 'package:tst_2021/shared/newcubit/newsstatus.dart';
import 'package:tst_2021/shared/todo_bloc/todo_cubit.dart';

import '../../../main.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,Newsstatus>(
      builder: (context,status){
        NewsCubit cubit = NewsCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: Text('News App',style: Theme.of(context).textTheme.bodyText1,),
            actions: [
              CircleAvatar (foregroundColor: Colors.black,backgroundColor: Colors.grey[100],child:
              IconButton(onPressed: (){
                nav(context: context, Widget: Search());
              }, icon: Icon(Icons.search)))
           ,SizedBox(width: 10,)
            ,              CircleAvatar(foregroundColor: Colors.black,backgroundColor: Colors.grey[100],child:
              IconButton(onPressed: (){
                Todo_cubit.get(context).switch_dark_light_mode();
              }, icon: Icon(Icons.brightness_3_outlined)))

            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: cubit.items,
            currentIndex: cubit.index,
            onTap: (index){
              cubit.navigate(index);
            },
          ),
        body: cubit.pages[cubit.index],
        ); },
      listener:(context,status){} ,
    );
  }
}
