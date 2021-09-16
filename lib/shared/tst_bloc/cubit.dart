import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tst_2021/module/menu/menu.dart';
import 'package:tst_2021/module/tap/tap.dart';
import 'package:tst_2021/module/unit/unit.dart';
import 'package:tst_2021/shared/tst_bloc/status.dart';

class Cubit_tst extends Cubit<Status>
{
  Cubit_tst() : super(Intitial());
  static Cubit_tst geter(context) => BlocProvider.of(context);
  late Database database;
  List<Map> mydata = [];
  List<Map> mydata_Done = [];
  List<Map> mydata_Archieve = [];

  int indexer = 0;
  List<String>app_bar_title =['menu',  'Tap' , 'Unit'];
  List<Widget>taps = [Menu(),Tap(),Unit()];
  bool add_note =  false;
  IconData note_icon = Icons.edit;
  void create_db()
  {
    openDatabase('tst.db',
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
          print('database opened');
          select_db(database);
        }
    ).then((value) {
      database = value;
      emit(Create());
    });

  }
 void insert_db({required String title,required String date,required String time})
   {

     database.transaction((txn)  {
      return   txn.rawInsert(
          'INSERT INTO tasks (title,date,time,status) VALUES ("$title","$date","$time","")');

    }).then((value) {
      emit(Insert());
      print('$value added');
      select_db(database);
    });



  }

  void select_db(Database database)
  {
    mydata_Done = [];
    mydata_Archieve = [];
    mydata = [];
   database.rawQuery('SELECT * FROM tasks').then((value){
      value.forEach((element) {
        if( element['status']  =='Done'){ mydata_Done.add(element);}
        else if( element['status']  =='Archieve'){ mydata_Archieve.add(element);}
        else {mydata.add(element);}


      });
      emit(Select());
    });
  }

  void update_icon_naviation(IconData iconData, bool check)
  {
    this.add_note= check;
    this.note_icon = iconData;
    emit(Todo_Update_icon_naviation());
  }
  void navigate(int index)
  {
    this.indexer =  index;
    emit(Todo_NavigationButton_state());
  }
  void delete({required int id}) async
  {
   await database.rawDelete('DELETE FROM tasks WHERE id = ?', ['$id']).then((value) {
     emit(Delete());
     print(value);
     select_db(database);
    });
   // select_db(database);
  }
  void update_Done({required String status,required int id})
  {
    emit(Update_Done());
    database.rawUpdate(
        'UPDATE tasks SET status = ? WHERE id = ?',
        ['$status',id]).then((value) {
      print('updated: $value');
      select_db(database);
    });
  }
  void update_Archieved({required String status,required int id})
  {
    emit(Update_Archieved());
    database.rawUpdate(
        'UPDATE tasks SET status = ? WHERE id = $id',
        ['$status']).then((value) {
      print('updated: $value');
      select_db(database);

    });
  }
}