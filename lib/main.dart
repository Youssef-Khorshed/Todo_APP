import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tst_2021/layout/Newapp/Newsfile/Newsfile.dart';
import 'package:tst_2021/shared/bloc_counter/cubit.dart';
import 'package:tst_2021/shared/bloc_tracing/bloc_tst.dart';
import 'package:tst_2021/shared/network/local/preferences.dart';
import 'package:tst_2021/shared/network/references/dio.dart';
import 'package:tst_2021/shared/newcubit/newscubit.dart';
import 'package:tst_2021/shared/todo_bloc/todo_cubit.dart';
import 'package:tst_2021/shared/todo_bloc/todo_status.dart';

import 'module/count/counting.dart';
import 'module/tst_file/tst.dart';
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.intial();
  await Preference.intial();
  bool? darkmode = Preference.get(key: 'id');
  runApp(MyApp(darkmode!));
}
class MyApp extends StatelessWidget
{
   bool? darkmode;
  MyApp(this.darkmode);
  @override
  Widget build(BuildContext context) {

    return    MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context)=>Todo_cubit()..switch_dark_light_mode(getid:darkmode)),
        BlocProvider( create: (context)=>
        NewsCubit()..get_business_data()..get_sports_data()..get_science_data(),),
        BlocProvider(create:
            (context)=>Cubitc())
      ],child:BlocConsumer<Todo_cubit,Todo_status>(
      builder:(context,status){
        return  MaterialApp(
          debugShowCheckedModeBanner:  false,
          theme: ThemeData(
              textTheme:TextTheme(
                  bodyText1:TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),
                  bodyText2:TextStyle(
                      color: Color(0xFF454545),
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                  ),
                  overline: TextStyle(
                      color: Color(0xFFC1C0C0),
                      fontWeight: FontWeight.bold,
                      fontSize: 13
                  )

              ) ,
              appBarTheme: AppBarTheme(
                  backgroundColor: Color(0xFFFAFAFA),
                  elevation: 0,
                  titleSpacing: 20,
                  titleTextStyle: TextStyle(fontSize: 20,color: Colors.black),
                  iconTheme:  IconThemeData(
                      color: Colors.black
                  )
              ),
              scaffoldBackgroundColor: Color(0xFFFAFAFA),
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                  elevation: 0,
                  backgroundColor:Colors.white,
                  type: BottomNavigationBarType.fixed

              )
          ),
          darkTheme:   ThemeData(
              textTheme:TextTheme(
                  bodyText1:TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),
                  bodyText2:TextStyle(
                      color: Color(0xFFC1C0C0),
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                  ),
                  overline: TextStyle(
                      color: Color(0xFFC1C0C0),
                      fontWeight: FontWeight.bold,
                      fontSize: 13
                  )

              ) ,
              appBarTheme: AppBarTheme(

                  backgroundColor: Color(0xB9747272),
                  elevation: 0,
                  backwardsCompatibility: false,
                  titleSpacing: 20,
                  titleTextStyle: TextStyle(fontSize: 20,color: Colors.black),
                  iconTheme:  IconThemeData(
                      color: Colors.black
                  )
              ),
              scaffoldBackgroundColor: Color(0xB9747272),
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                  elevation: 0,
                  backgroundColor:Color(0xB9747272),
                  type: BottomNavigationBarType.fixed

              )
          ),
          themeMode: Todo_cubit.get(context).id ? ThemeMode.dark : ThemeMode.light,
          home: TST(),

        );
      } ,
      listener: (context,status){
      },
    ) ,
    );

  }

}
