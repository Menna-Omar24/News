import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/home/views/widget/custom_bottom_nav_bar.dart';

import '../../../core/utils/app_route.dart';
import '../cubit/bottom_nav/bottom_nav_cubit.dart';
import '../cubit/bottom_nav/bottom_nav_state.dart';

class HomeView extends StatelessWidget {
  static const String id = AppRoute.home;

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavCubit(),
      child: BlocBuilder<BottomNavCubit, BottomNavState>(
        builder: (context,state){
          var cubit = BottomNavCubit.get(context);
          return Scaffold(
            body:cubit.screens[cubit.currentIndex],
            bottomNavigationBar: CustomBottomNavBar(),
          );
        },
      )
    );
  }
}
