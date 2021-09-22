
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tst_2021/shared/bloc_counter/cubit.dart';
import 'package:tst_2021/shared/bloc_counter/status.dart';
import 'package:tst_2021/shared/component/component.dart';
import 'package:tst_2021/shared/newcubit/newscubit.dart';
import 'package:tst_2021/shared/newcubit/newsstatus.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Web extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Cubitc,MYStatus>(builder: (context,status)
    { List<int>list = Cubitc.get(context).numbers;
      return Scaffold(
      appBar: AppBar(
        title: Text('Shop App'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                IconButton(iconSize: 35,onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined)),
                CircleAvatar(backgroundColor: Colors.red,radius: 10,child: Text('${Cubitc.cart_num}'),)
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [ Expanded(
          child: ListView.separated(itemBuilder: (context,index)=>line(),
              separatorBuilder: (context,index)=>
                  item(context:context,index:index,business_list:  list, cubitc: Cubitc.get(context)), itemCount: list.length),
        ),

        ]  
    ),
    );
    }, listener: (context,status){});
  }
}
