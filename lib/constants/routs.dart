import 'package:flutter/material.dart';
import 'package:workout_fitness_app/common_widgets/bottom_navagationbar.dart';
import 'package:workout_fitness_app/constants/routs_constants.dart';
import 'package:workout_fitness_app/view/exercise_view/exercise_view.dart';
import 'package:workout_fitness_app/view/exercise_view/exercise_view_2.dart';
import 'package:workout_fitness_app/view/home_view/home_view.dart';
import 'package:workout_fitness_app/view/login_view/login_view.dart';
import 'package:workout_fitness_app/view/login_view/on_boarding_view.dart';
import 'package:workout_fitness_app/view/login_view/step1_view.dart';
import 'package:workout_fitness_app/view/login_view/step2_view.dart';
import 'package:workout_fitness_app/view/login_view/step3_view.dart';
import 'package:workout_fitness_app/view/meal_plan_view/meal_plan_view.dart';
import 'package:workout_fitness_app/view/meal_plan_view/meal_plan_view_2.dart';
import 'package:workout_fitness_app/view/menu_view/menu_view.dart';
import 'package:workout_fitness_app/view/menu_view/yoga_view.dart';
import 'package:workout_fitness_app/view/running_view/running_view.dart';
import 'package:workout_fitness_app/view/schedule_view/schedule_view.dart';
import 'package:workout_fitness_app/view/setting_view/setting_view.dart';
import 'package:workout_fitness_app/view/tips_view/tips_detail_view.dart';
import 'package:workout_fitness_app/view/tips_view/tips_view.dart';
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
          RouteList.scheduleview:(context)=>ScheduleView(),
          RouteList.exerciseView:(context)=>ExerciseView(),
          RouteList.exerciseview2:(context)=>ExerciseView2(),
          RouteList.mealPlanview:(context)=>MealPlanView(),
          RouteList.mealPlanview2:(context)=>MealPlanView2(),
          RouteList.runningview:(context)=>RunningView(),
          RouteList.tipsview:(context)=>TipsView(),
          RouteList.SettingView:(context)=>SettingView(),
    };
  }
}