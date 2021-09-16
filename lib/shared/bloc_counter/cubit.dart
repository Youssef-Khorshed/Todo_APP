import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tst_2021/shared/bloc_counter/status.dart';

class Cubitc extends Cubit<MYStatus>
{
  Cubitc() : super(Intialstate());
  static Cubitc get(context) =>   BlocProvider.of(context);
  int counter = 1;
  void minus()
  {
    counter--;
    emit(Minusstate(counter));
  }
  void plus()
  {
    counter++;
    emit(Plustate(counter));
}
}