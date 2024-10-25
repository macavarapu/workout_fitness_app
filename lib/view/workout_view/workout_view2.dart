import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_fitness_app/constants/app_color_constants.dart';
import 'package:workout_fitness_app/constants/text_styles.dart';
import 'package:workout_fitness_app/controller/workout2_controller.dart';

class WorkoutView2 extends StatefulWidget {
  const WorkoutView2({super.key});

  @override
  State<WorkoutView2> createState() => _WorkoutView2State();
}

class _WorkoutView2State extends State<WorkoutView2> {
  final Workout2Controller workout2controller=Get.put(Workout2Controller());
  @override
  Widget build(BuildContext context) {
      var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(

        elevation: 0,
        centerTitle: true,
        title: Text("Workout",style: TextStyles.body1(
          fontSize: 20,color: AppColors.white,
        ),),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          icon: Icon(Icons.arrow_back_ios,size: 30,color: Colors.black,)),
          backgroundColor: AppColors.primary,
      ),
         body: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: workout2controller.WorkArr1.length,
          itemBuilder: (context, index) {
               final wObj = workout2controller.WorkArr1[index];
            return Container(
              decoration: BoxDecoration(color: AppColors.white),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        wObj.image,
                       
                        width: media.width,
                        height: media.width * 0.55,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        width: media.width,
                        height: media.width * 0.55,
                        decoration:
                            BoxDecoration(color: Colors.black.withOpacity(0.5)),
                      ),
                      Image.asset(
                        "assets/images/play.png",
                        width: 60,
                        height: 60,
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                         wObj.name,
                          style: TextStyle(
                              color: AppColors.secondaryText,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        IconButton(
                            onPressed: () {
                                 Navigator.pushNamed(context,"/workoutdetailview");
                            
                            },
                            icon: Image.asset("assets/images/more.png",
                                width: 25, height: 25))
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
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
    );
  }
}