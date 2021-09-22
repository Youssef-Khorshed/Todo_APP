import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tst_2021/shared/bloc_counter/status.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Cubitc extends Cubit<MYStatus>
{
  Cubitc() : super(Intialstate());
  static Cubitc get(context) =>   BlocProvider.of(context);
  static int counter = 1, cart_num = 0;
  List <int>numbers = [0,0,0,0,0];
  List<String>images = ['https://cdn.tridge.com/journal_image/4c/33/bd/4c33bd76d609a1160f2f1371fb56c419d15b89f5/42E9as7NaTaAi4A6JcuFwG-1200-80.jpg'
    ,'https://cdn.shopify.com/s/files/1/1891/6405/products/shop-online-from-sri-lanka-fruits-yellow-mango-fresh-food-in-dubai-and-abu-dhabi-1129587179560_grande.jpg?v=1536789602'
    ,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR02df1AaGHhwnUi1MpfDDQmqwCoTmTMbex7CrSWWn-TdN5vVx8Pob6apPdsPX7l9lWXQU&usqp=CAU'
  ,'https://e7.pngegg.com/pngimages/38/272/png-clipart-pomegranate-juice-pomegranate-natural-foods-frutti-di-bosco.png'];
  List<String>title = ['Banana','Mango','Apple','pomegranate'];
  void minus(int index)
  {
    numbers[index]--;
    emit(Minusstate(numbers[index]));
  }
  void plus(int index)
  {
     numbers[index]++;
    emit(Plustate(numbers[index]));
}
void add_cart(int index,String string)
{
  cart_num+=numbers[index];
  Fluttertoast.showToast(
      msg: "${numbers[index]} kg of $string added to cart",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0
  );
  numbers[index] = 0;
  emit(Cartlstate());
}

}