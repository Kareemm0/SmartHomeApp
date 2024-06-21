import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/Feature/main/presenation/cubit/cubit/main_cubit.dart';
import 'package:smart_home/core/utils/app_colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit(),
      child: BlocBuilder<MainCubit, MainState>(
        builder: (context, state) {
          final cubit = context.read<MainCubit>();
          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
                onTap: (index) {
                  cubit.changeIndex(index: index);
                },
                type: BottomNavigationBarType.fixed,
                backgroundColor: AppColors.authText,
                currentIndex: cubit.currentIndex,
                selectedItemColor: AppColors.auth,
                unselectedItemColor: AppColors.wihte,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                    ),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.bluetooth,
                    ),
                    label: "Connected",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.settings,
                    ),
                    label: "Setting",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person_outline,
                    ),
                    label: "Profile",
                  ),
                ]),
            body: cubit.screens[cubit.currentIndex],
          );
        },
      ),
    );
  }
}
