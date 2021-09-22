import 'dart:core';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tst_2021/module/webview/webview.dart';
import 'package:tst_2021/shared/bloc_counter/cubit.dart';
import 'package:tst_2021/shared/constant/constant.dart';
import 'package:tst_2021/shared/newcubit/newscubit.dart';
import 'package:tst_2021/shared/tst_bloc/cubit.dart';

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
  GestureTapCallback? ontap,
  Function(String)? onchange

})=>                  TextFormField(
controller: pass,
validator: validator,
keyboardType: keyboard_type,
obscureText: password,
onTap: ontap,
onChanged: onchange,
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
        }, icon:Icon( Icons.add_box,color: Colors.green,)),
        IconButton(onPressed: (){
          cubit.update_Archieved(status: 'Archieve', id: data['id']);

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


Widget news_item(context,business_list)=>Padding(
  padding: const EdgeInsets.all(20),
  child: InkWell(
    onTap: (){
     // nav(context: context, Widget: Web(u: business_list['url']));
    },
    child: Container(
      height: 150,
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image(image:
NetworkImage(business_list['urlToImage'] != null ? business_list['urlToImage']  : 'https://cdn.cnn.com/cnnnext/dam/assets/210917234709-covid-hospital-florida-0825-super-tease.jpg')
                ,width: 150,height: 150,fit: BoxFit.fill,),
            ),
          ),
          SizedBox(width: 15,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(business_list['title'] != null ?business_list['title'] : 'no title' ,maxLines: 1
                  ,overflow: TextOverflow.ellipsis,
                   style:Theme.of(context).textTheme.bodyText2 ,
                ),
                SizedBox(height: 4,),
                Text(business_list['description'] !=null ? business_list['description']:'no description'
                  ,maxLines: 3,overflow: TextOverflow.ellipsis,
                  style:Theme.of(context).textTheme.bodyText1 ,
                ),
                SizedBox(height: 5,),

                Text(business_list['publishedAt'] !=null ? business_list['publishedAt'] : 'no date'
                  ,  style:Theme.of(context).textTheme.overline ,maxLines: 1,overflow: TextOverflow.ellipsis,

          )
              ],
            ),
          )
        ],
      ),
    ),
  ),
);

Widget item(
    {context,index,business_list,required Cubitc cubitc,
    })=>Padding(
  padding: const EdgeInsets.all(20),
  child: Container(
    height: 150,
    child: Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image(image:
            NetworkImage('${cubitc.images[index]}')
              ,width: 150,height: 150,fit: BoxFit.fill,),
          ),
        ),
        SizedBox(width: 15,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${cubitc.title[index]}' ,maxLines: 1
                ,overflow: TextOverflow.ellipsis,
                style:Theme.of(context).textTheme.bodyText2 ,
              ),
              SizedBox(height: 4,),
              Text('no description'
                ,maxLines: 3,overflow: TextOverflow.ellipsis,
                style:Theme.of(context).textTheme.bodyText1 ,
              ),
              SizedBox(height: 5,),

            ],
          ),
        ),
     Column(
       children: [
         Row(children: [
           FloatingActionButton(heroTag: 'age++',onPressed: (){cubitc.plus(index); },mini: true,child: Icon(Icons.add_circle),)
           , SizedBox(width: 10,),
           Text('${business_list[index]}',style: Theme.of(context).textTheme.bodyText1,),
            SizedBox(width: 10,),
           FloatingActionButton(heroTag: 'age--',onPressed: (){cubitc.minus(index);},mini: true,child: Icon(Icons.remove_circle),)

         ],)
       ,  IconButton(onPressed: (){
         cubitc.add_cart(index,cubitc.title[index]);
         }, icon: Icon(Icons.add_shopping_cart)),

       ],
     )
      ],
    ),
  ),
);




Widget line()=> Padding(
  padding: const EdgeInsets.only(left: 15),
  child: Container(height: 1,color: Colors.grey,),
);


void nav({required context,required Widget})=> Navigator.push(context,
    MaterialPageRoute(builder: (context)=>Widget));
