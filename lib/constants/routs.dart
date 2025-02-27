import 'package:flutter/material.dart';
import 'package:workout_fitness_app/common_widgets/bottom_navagationbar.dart';
import 'package:workout_fitness_app/constants/routs_constants.dart';
import 'package:workout_fitness_app/view/home_view/home_view.dart';
import 'package:workout_fitness_app/view/login_view/login_view.dart';
import 'package:workout_fitness_app/view/login_view/on_boarding_view.dart';
import 'package:workout_fitness_app/view/login_view/step1_view.dart';
import 'package:workout_fitness_app/view/login_view/step2_view.dart';
import 'package:workout_fitness_app/view/login_view/step3_view.dart';
import 'package:workout_fitness_app/view/menu_view/menu_view.dart';
import 'package:workout_fitness_app/view/menu_view/yoga_view.dart';
import 'package:workout_fitness_app/view/weight/weight_view.dart';
import 'package:workout_fitness_app/view/workout_view/workout_detail_view.dart';
import 'package:workout_fitness_app/view/workout_view/workout_view.dart';
import 'package:workout_fitness_app/view/workout_view/workout_view2.dart';

class Routes {
  static Map<String, WidgetBuilder> get routes {
    return {
            RouteList.onBoardingView: (context) => OnBoardingView(),
            RouteList.step1View:(context)=>Step1View(),
            RouteList.step2View:(context)=>Step2View(),
            RouteList.step3view:(context)=>Step3View(),
            RouteList.menuview:(context)=>MenuView(),
            RouteList.homeview:(context)=>HomeView(),
            RouteList.loginview:(context)=>LoginView(),
            RouteList.workoutview:(context)=>WorkoutView(),
            RouteList.workoutview2:(context)=>WorkoutView2(),
            RouteList.workoutdetailview:(context)=>WorkoutDetailView(),
          RouteList.bottomNavigationBar:(context)=>BottomNavagationbarview(),
          RouteList.yogaview:(context)=>YogaView(),
          RouteList.weightView:(context)=>WeightView(),
    };
  }
}