import 'package:flutter/material.dart';
import 'package:workout_fitness_app/constants/app_color_constants.dart';
import 'package:workout_fitness_app/constants/string_constants.dart';
import 'package:workout_fitness_app/view/home_view/home_view.dart';
import 'package:workout_fitness_app/view/menu_view/yoga_view.dart';
import 'package:workout_fitness_app/view/workout_view/workout_detail_view.dart';
import 'package:workout_fitness_app/view/workout_view/workout_view.dart';
import 'package:workout_fitness_app/view/workout_view/workout_view2.dart';
class BottomNavagationbarview extends StatefulWidget {
  const BottomNavagationbarview({super.key});

  @override
  State<BottomNavagationbarview> createState() =>
      _BottomNavagationbarviewState();
}

class _BottomNavagationbarviewState extends State<BottomNavagationbarview> {
  int _SelectIndex = 0;
  final _screens = [
 
    WorkoutView(),
    WorkoutView2(),
    WorkoutDetailView(),
    YogaView(),
  
    
    
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      //backgroundColor: Colors.amber,
      body: _screens[_SelectIndex],
      bottomNavigationBar: BottomAppBar(
        height: 100,
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {},
                child: Image.asset("assets/images/menu_running.png",
                    width: 25, height: 25),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset("assets/images/menu_meal_plan.png",
                    width: 25, height: 25),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset("assets/images/menu_home.png",
                    width: 25, height: 25),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset("assets/images/menu_weight.png",
                    width: 25, height: 25),
              ),
              InkWell(
                onTap: () {},
                child:
                    Image.asset("assets/images/more.png", width: 25, height: 25),
              ),
            
             
            ],
          ),
        ),

      ),
      
      
      // Container(
      //   height: 80,
      //   child: BottomNavigationBar(
      //     backgroundColor: AppColors.white,
      //     type: BottomNavigationBarType.fixed,
      //     selectedItemColor: Colors.white,
      //     unselectedItemColor: Colors.white,
      //     selectedLabelStyle: TextStyle(
      //       fontWeight: FontWeight.bold,
      //       fontSize: 15,
      //     ),
      //     currentIndex: _SelectIndex,
      //     onTap: (index) {
      //       setState(() {
      //         _SelectIndex = index;
      //       });
      //     },
      //     items: [
      //       BottomNavigationBarItem(
      //           icon:  Image.asset("assets/images/menu_running.png",
      //               width: 25, height: 25),
      //           //label: StringConstants.home,
      //           ),
      //       BottomNavigationBarItem(
      //           icon: Image.asset("assets/images/menu_meal_plan.png",
      //               width: 25, height: 25),
      //           //label: StringConstants.menu_meal_plan
      //           ),
               
      //       BottomNavigationBarItem(
      //           icon: Image.asset("assets/images/menu_home.png",
      //               width: 25, height: 25),
      //          // label: StringConstants.Report
      //           ),
      //       BottomNavigationBarItem(
      //           icon:    Image.asset("assets/images/more.png", width: 25, height: 25),
      //           //label: StringConstants.More
      //           ),
      //     ],
      //   ),
      // ),
    );
  }
}



 