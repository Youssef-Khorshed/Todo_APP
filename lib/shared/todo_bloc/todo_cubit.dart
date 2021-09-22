import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tst_2021/module/menu/menu.dart';
import 'package:tst_2021/module/tap/tap.dart';
import 'package:tst_2021/module/unit/unit.dart';
import 'package:tst_2021/shared/network/local/preferences.dart';
import 'package:tst_2021/shared/todo_bloc/todo_status.dart';

class Todo_cubit extends Cubit<Todo_status>
{
  Todo_cubit() : super (Todo_intial_state());
  static Todo_cubit get(context) => BlocProvider.of(context);
 List<Map>getdata =[];
  int indexer = 0;
  List<String>app_bar_title =['menu',  'Tap' , 'Unit'];
  List<Widget>taps = [Menu(),Tap(),Unit()];
  late Database database;



  Future<String> printer () async =>'hello';
   create_db()
  async {
    database =  await openDatabase('todo.db',
        version: 1,
        onCreate: (database,version){
          // id int key
          // title string
          // data string
          // time string
          // status string
          print('database created');
          database.execute('CREATE TABLE tasks (id INTEGER PRIMARY KEY,title Text,date Text,time Text,status Text)').then((value) =>print('table created'));
        },
        onOpen: (database){
        select_db(database).then((value) {
           getdata = value;
           emit(Todo_SelectDatabase_state());

        });
        }
    );
    emit(Todo_CreatrDatabase_state());

  }
  
    insert_db({required String title,required String date,required String time})
   async {


       await database.transaction((txn) async  {
        await   txn.rawInsert(
            'INSERT INTO tasks (title,date,time,status) VALUES ("$title","$date","$time","")');

       }).then((value) {
         emit(Todo_InsertDatabase_state());
         print('$value added');
         select_db(database).then((value) {
           getdata = value;
           emit(Todo_SelectDatabase_state());
             print(getdata);

         });
       });



}

  Future<List<Map<String, Object?>>> select_db(Database database) async
  {

    return   await database.rawQuery('SELECT * FROM tasks');
  }

  bool id = false;
  void switch_dark_light_mode({bool? getid}) {
    if(getid != null) {id =getid;}
    else {
      id = !id;
      print(id);
      Preference.put(key: 'id', value: id);
    }
    emit(News_Screenmode());
  }
}