import 'package:attack_on_titan_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class HomeCubit extends Cubit<int> {
  HomeCubit() : super(0);

  int currentIndex = 0;

  void changeView(int value) {
    emit(value);
  }

  List<Widget> views = [
    HomeViewBody(),
    HomeViewBody(),
    HomeViewBody(),
  ];
}
