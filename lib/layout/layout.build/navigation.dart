
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter/material.dart';
import 'package:tst_2021/module/menu/menu.dart';
import 'package:tst_2021/module/tap/tap.dart';
import 'package:tst_2021/module/unit/unit.dart';
import 'package:tst_2021/shared/component/component.dart';
import 'package:tst_2021/shared/constant/constant.dart';
import 'package:tst_2021/shared/todo_bloc/todo_cubit.dart';
import 'package:tst_2021/shared/todo_bloc/todo_status.dart';



class Navigation extends StatelessWidget {

  TextEditingController title = TextEditingController();
  TextEditingController time = TextEditingController();
  TextEditingController Date = TextEditingController();



  GlobalKey<ScaffoldState> scaf_key = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> form_key = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return BlocProvider(create:(BuildContext context)=> Todo_cubit()..create_db(),
    child:BlocConsumer<Todo_cubit,Todo_status>(
      listener: (BuildContext context,Todo_status status){},
      builder: (BuildContext context,Todo_status status)
      {    Todo_cubit cubit =  Todo_cubit.get(context);

      return Container()/*
        Scaffold(
          key: scaf_key,
          appBar: AppBar(
            title: Text(cubit.app_bar_title[cubit.indexer]) ,
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {


            if(cubit.add_note && form_key.currentState!.validate())
            {
              cubit.insert_db(title: title.text, date: Date.text, time: time.text);
              cubit.update_icon_naviation(Icons.edit,false );


            }
            else { //  insert_db();
             cubit.update_icon_naviation(Icons.add, true);

              scaf_key.currentState!.showBottomSheet((context) =>
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Form(
                      key: form_key,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            child: textformfield(
                                pass: title,
                                text: 'title',
                                keyboard_type: TextInputType.text,
                                prefix_icon: Icon(Icons.text_fields),
                                validator: (value){
                                  if(value!.isEmpty){
                                    return 'wrong title';
                                  }
                                  return null;
                                }
                            ),
                          )
                          , SizedBox(height: 10,),
                          Container(
                            child: textformfield(
                              pass: time,
                              text: 'Time',
                              keyboard_type: TextInputType.text,
                              prefix_icon: Icon(Icons.access_time_rounded),
                              validator: (value){
                                if(value!.isEmpty){
                                  return'wrong time';
                                }
                                return null;
                              },
                              ontap: (){
                                showTimePicker(context: context, initialTime: TimeOfDay.now())
                                    .then((value) {time.text = value!.format(context);});
                              },
                            ),
                          )
                          ,
                          SizedBox(height: 10,),
                          Container(
                            child: textformfield(
                              pass: Date,
                              text: 'Date',
                              keyboard_type: TextInputType.text,
                              prefix_icon: Icon(Icons.calendar_today),
                              validator: (value){
                                if(value!.isEmpty){
                                  return'wrong Date';
                                }
                                return null;
                              },
                              ontap: (){
                                showDatePicker
                                  (
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime.now(),
                                    lastDate:  DateTime.parse('2021-12-31'))
                                    .then((value) {
                                  Date.text =  DateFormat.yMMMd().format(value!).toString();

                                });
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  )).closed.then((value)  {

                cubit.update_icon_naviation(Icons.edit, false);
              });
            }

          },child: Icon(cubit.note_icon),),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: cubit.indexer ,
            elevation: 0,
            backgroundColor: Color(0xFFE8C5C5),
            onTap: (index){
              cubit.navigate(index);
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'menu') ,
              BottomNavigationBarItem(icon: Icon(Icons.check_circle_outline_sharp), label:'Done' ) ,
              BottomNavigationBarItem(icon: Icon(Icons.archive_sharp),label: 'Archive') ,

            ],
          ),
          body: cubit.taps[cubit.indexer]
        /*
      ConditionalBuilder(
      condition: data.length > 0,
        builder:(context)=>taps[indexer] ,
        fallback: (context)=>Center(child: CircularProgressIndicator()),
      ),
     */
      )
      */
      ;

      },
    ) ,
    )
    ;


  }


}
