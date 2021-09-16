import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../model/user/user.dart';

class Data_mod extends StatelessWidget {

  List<User>users = [User(1, 'ali', '+2012023044'),User(1, 'ali', '+2012023044'),User(1, 'ali', '+2012023044'),User(1, 'ali', '+2012023044') ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.separated(itemBuilder: (context,index)=> item(users[index])
            , separatorBuilder: (context,index)=>Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height:1,color: Colors.grey, ),
            )
            , itemCount: users.length
        ),
      ),
    );
  }

  Widget item(User user)=>  Row(
  children: [
  CircleAvatar(child:
  Text('${user.id}',maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 20),),radius: 30,backgroundColor: Color(0xff630300),),
  SizedBox(width: 10,),
  Expanded(
  child: Column(
  mainAxisSize: MainAxisSize.min,
  crossAxisAlignment: CrossAxisAlignment.start
  ,children: [
  Text('${user.name}',maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 20),),
  Text('${user.phone}',style: TextStyle(color: Colors.grey,fontSize: 20),)
  ],),
  )
  ],
  );


}
