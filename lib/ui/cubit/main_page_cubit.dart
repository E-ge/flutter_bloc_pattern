import 'dart:ffi';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_pattern/data/repo/math_repository.dart';
class MainPageCubit extends Cubit<int>{
  MainPageCubit():super(0);

  var mrepo = MathRepository();
  void plus(String getVariable1, String getVariable2){
    int resultPlus = mrepo.plus(getVariable1, getVariable2);
    emit(resultPlus);
  }
  void x (String getVariable1, String getVariable2){
    emit(mrepo.x(getVariable1, getVariable2));
  }
}