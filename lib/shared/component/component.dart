import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:todo_app/shared/tst_bloc/cubit.dart';


Widget DefaultButton(
{
  double width = double.infinity,
  Color color =  const Color(0xFFBD4B4B),
  Color text_color =  Colors.white,
  FontWeight text_font_weight = FontWeight.bold,
  required VoidCallback controll,
  required String text,
  double radius = 0.0}
    )=>  Container(
  width: width,
  decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(radius)),
  clipBehavior: Clip.antiAliasWithSaveLayer,
  child: MaterialButton(
    onPressed: controll ,

      child: Text(
        '$text',
        style: TextStyle(
            color: text_color, fontWeight: text_font_weight),
      )),
);
//----------------------------------------------
Widget textformfield(  {
  required TextEditingController pass,
  required Icon prefix_icon ,
  IconData ? suffix_icon,
  required TextInputType keyboard_type,
  bool password = false,
  required String text,
   double radius = 0.0,
   FormFieldValidator<String>? validator,
  VoidCallback? suffix_hand,
  GestureTapCallback? ontap

})=>                  TextFormField(
controller: pass,
validator: validator,
keyboardType: keyboard_type,
obscureText: password,
onTap: ontap,
decoration: InputDecoration(
labelText: '$text',
border: OutlineInputBorder(
  borderRadius: BorderRadius.circular(radius),
),
prefixIcon: prefix_icon,
suffixIcon: IconButton(onPressed: suffix_hand, icon: Icon(suffix_icon),),


),
);

//
Widget item_node_style({
  required Map data,
  required int index,
  required Cubit_tst cubit,
}) => Dismissible(
  key: Key(data['id'].toString()),
  onDismissed: (direction){
    cubit.delete(id: data['id']);
    Fluttertoast.showToast(
        msg: "Task deleted",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  },
  child:   Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
      children: [
        CircleAvatar(radius: 50
          ,child: Text('${data['time']}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
          ,foregroundColor: Color(0xFFFAFAFA)
          ,backgroundColor: Color(0xFFEFB7B7)
          ,)  ,
        SizedBox(width: 15,),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${data['title']}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
              Text('${data['date']}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.grey[400]),)
            ],
          ),
        ),
        SizedBox(width: 15,),
        IconButton(onPressed: (){
          cubit.update_Done(status: 'Done', id: data['id']);
          Fluttertoast.showToast(
              msg: "Done",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
          );
        }, icon:Icon( Icons.add_box,color: Colors.green,)),
        IconButton(onPressed: (){
          cubit.update_Archieved(status: 'Archieve', id: data['id']);
          Fluttertoast.showToast(
              msg: "Archived",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
          );

        }, icon:Icon( Icons.archive_sharp,color: Colors.blueGrey,) ),

      ],
    ),
  ),
);
//
Widget Check_tasks()=> Center(child: Container(
  child: Column(
    mainAxisSize:MainAxisSize.min ,
    children: [
      Icon(Icons.menu,size: 100,color: Colors.blueGrey,),
      Text('No Tasks',style: TextStyle(fontSize: 50,color: Colors.blueGrey),)
    ],
  ),
));

Widget line()=> Padding(
  padding: const EdgeInsets.only(left: 15),
  child: Container(height: 1,color: Colors.grey,),
);