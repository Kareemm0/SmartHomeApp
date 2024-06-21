import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:smart_home/Feature/connected/connected_screen.dart';
import 'package:smart_home/Feature/home/presenation/views/home_screen.dart';
import 'package:smart_home/Feature/profile/profile_screen.dart';
import 'package:smart_home/Feature/setting/setting_screen.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());

  int currentIndex = 0;

  List<Widget> screens = [
    const HomeScreen(),
    const ConnectedScreen(),
    const SettingScreen(),
    const ProfileScreen(),
  ];

  void changeIndex({required int index}) {
    currentIndex = index;
    emit(ChangeIndexState());
  }
}
