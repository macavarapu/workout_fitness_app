import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_fitness_app/components/round_botton.dart';
import 'package:workout_fitness_app/constants/app_color_constants.dart';
import 'package:workout_fitness_app/constants/text_styles.dart';
import 'package:workout_fitness_app/controller/workout_controller.dart';
import 'package:workout_fitness_app/view_model/workout_view_model.dart';

class WorkoutView extends StatefulWidget {
  const WorkoutView({super.key});

  @override
  State<WorkoutView> createState() => _WorkoutViewState();
}

class _WorkoutViewState extends State<WorkoutView> {
  final WorkoutController workoutController =Get.put(WorkoutController());
  @override
  Widget build(BuildContext context) {
      var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(

        elevation: 0,
        centerTitle: true,
        title: Text("Workout",style: TextStyles.body1(
          fontSize: 20,color: AppColors.secondaryText,
        ),
        ),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          icon: Icon(Icons.arrow_back_ios,size: 30,color: Colors.black,)),
          backgroundColor: AppColors.white,
      ),
      body:  ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          itemCount: workoutController.WorkArr.length,
          itemBuilder: (context, index) {
             final wObj = workoutController.WorkArr[index];
          // var wObj = workoutController.WorkArr[index];
         
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: media.width * 0.5,
              decoration: BoxDecoration(
                  color: AppColors.gray, borderRadius: BorderRadius.circular(10)),
              clipBehavior: Clip.antiAlias,
              child: Stack(
                children: [
                  Image.asset(
                     //workoutController.WorkArr.first.image,
                    wObj.image,
                   // wObj["image"].toString(),
                    width: media.width,
                    height: media.width * 0.5,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: media.width,
                    height: media.width * 0.5,
                    decoration: BoxDecoration(
                      color: index % 2 == 0
                          ? Colors.black.withOpacity(0.7)
                          : AppColors.gray.withOpacity(0.35),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          wObj.title,
                           // workoutController.WorkArr.first.title,
                          //wObj["title"],
                          style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          wObj.name,
                            //workoutController.WorkArr.first.name,
                         // wObj["name"],
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          wObj.subtitle,
                            //workoutController.WorkArr.first.subtitle,
                        
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                                width: 100,
                                height: 35,
                                child: RoundBotton(
                                  title: "see more",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  onPressed: () {
  
                                    Navigator.pushNamed(context,"/workoutdetailview");
                                    print("singam");
                                    print("s");
                                  
                                  },
                                )),
                          ],
                        )
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