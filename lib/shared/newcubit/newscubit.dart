import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tst_2021/module/business/business.dart';
import 'package:tst_2021/module/science/science.dart';
import 'package:tst_2021/module/sports/sports.dart';
import 'package:tst_2021/shared/network/references/dio.dart';

import 'newsstatus.dart';

class NewsCubit extends Cubit<Newsstatus>
{

  NewsCubit() : super(NewsIntaialState());
  static NewsCubit get(context)=>  BlocProvider.of(context);
  int index = 0;
  List<Widget>pages = [Business(),Sports(),Science()];
  static List<dynamic>business_list = [];
  static List<dynamic>science_list = [];
  static List<dynamic>sports_list = [];
  static List<dynamic>search_list = [];
  static  String business = 'Business',sports = 'Sports',science = 'Science',Sittings = 'Sittings';
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(icon: Icon(Icons.business),label: '$business'),
    BottomNavigationBarItem(icon: Icon(Icons.sports_baseball),label:'$sports' ),
    BottomNavigationBarItem(icon: Icon(Icons.science_outlined),label:'$science' ),
  ];
  void navigate(int index) {
    this.index = index;
    emit(NewsBottomnavigationlState());
  }
  void get_business_data(){
    emit(News_b_loadinglState());
    DioHelper.getdata(url: 'v2/top-headlines', map:
    {
      'country':'eg',
      'category':'business',
      'apiKey':'de72b4bd4a814e0599136bd59f13e829'

    }).then((value)  {
      try {
        emit(News_b_SuccessState());
        business_list = value.data['articles'];
      }catch(e){print(e);}
    }).catchError((e){
      emit(News_b_errorState(e));
      print(e);});


  }
  void get_science_data(){
    emit(News_si_loadinglState());
    DioHelper.getdata(url: 'v2/top-headlines', map:
    {
      'country':'eg',
      'category':'science',
      'apiKey':'de72b4bd4a814e0599136bd59f13e829'
    }).then((value)  {
      try {
        emit(News_si_SuccessState());
        science_list = value.data['articles'];
      }catch(e){print(e);}
    }).catchError((e){
      emit(News_si_errorState(e));
      print(e);});


  }
  void get_sports_data(){
    emit(News_sp_loadinglState());
    DioHelper.getdata(url: 'v2/top-headlines'
        , map:
        {
          'country':'eg',
          'category':'sports',
          'apiKey':'de72b4bd4a814e0599136bd59f13e829'
        }
    ).then((value) {
      sports_list = value.data['articles'];
      emit(News_sp_SuccessState());
    }).catchError((e){emit(News_sp_errorState(e));print(e);});

  }
  void get_sarch_data({required String data}){
    emit(News_search_loadinglState());
    DioHelper.getdata(url: 'v2/top-headlines'
        , map:
        {
          'country':'eg',
          'category':'$data',
          'apiKey':'de72b4bd4a814e0599136bd59f13e829'
        }
    ).then((value) {
      search_list = value.data['articles'];
      emit(News_search_SuccessState());
    }).catchError((e){emit(News_search_errorState(e));print(e);});

  }

  bool id = false;
  void switch_dark_light_mode() {
    id =!id;
    print(id);
    emit(News_Screenmode());
  }

}