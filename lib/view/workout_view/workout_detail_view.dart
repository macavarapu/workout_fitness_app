import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:workout_fitness_app/common_widgets/bottom_navagationbar.dart';
import 'package:workout_fitness_app/common_widgets/response_row_widget.dart';
import 'package:workout_fitness_app/constants/app_color_constants.dart';
import 'package:workout_fitness_app/constants/image_constants.dart';
import 'package:workout_fitness_app/constants/text_styles.dart';
import 'package:workout_fitness_app/controller/workout_details_controller.dart';

class WorkoutDetailView extends StatefulWidget {
  const WorkoutDetailView({super.key});

  @override
  State<WorkoutDetailView> createState() => _WorkoutDetailViewState();
}

class _WorkoutDetailViewState extends State<WorkoutDetailView> {
    List workArr = [
    {"name": "Running", "image": "assets/images/1.png"},
    {"name": "Jumping", "image": "assets/images/2.png"},
    {
      "name": "Running",
      "image": "assets/images/5.png",
    },
    {
      "name": "Jumping",
      "image": "assets/images/3.png",
    },
      
  ];
  final WorkoutDetailsController workoutDetailsController=Get.put(WorkoutDetailsController());
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return  Scaffold(
     
       appBar: AppBar(

        elevation: 0,
        centerTitle: true,
        title: Text("Climbers",style: TextStyles.body1(
          fontSize: 30,color: AppColors.white,
        ),
        ),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          icon: Icon(Icons.arrow_back_ios,size: 30,color: Colors.black,)),
          backgroundColor: AppColors.primary,
          actions: [
            IconButton(onPressed: (){}, icon: Image.asset(ImageConstants.node_music,width: 25,height: 25,)),
          ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(ImageConstants.ladies,
                width: media.width,
              height: media.width * 0.55,
              fit: BoxFit.cover,
            ),
               Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [

                  IgnorePointer(
                    ignoring: true,
                    child: RatingBar.builder(
                     initialRating: 4,
                     minRating: 1,
                     direction: Axis.horizontal,
                     allowHalfRating: true,
                     itemCount: 5,
                     itemSize: 25,
                     itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                     itemBuilder: (context, _) => Icon(
                       Icons.star,
                       color: AppColors.primary,
                     ),
                     onRatingUpdate: (rating) {
                       print(rating);
                     },
                  ),
                  ),

                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                       ImageConstants.like,
                        width: 20,
                        height: 20,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                      ImageConstants.share,
                        width: 20,
                        height: 20,
                      )),
                ],
              ),
            ),
              Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Text(
                "Recommended",
                style: TextStyle(
                    color: AppColors.secondaryText,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
             SizedBox(
              height: media.width * 0.26,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  itemCount: workArr.length,
                  itemBuilder: (context, index) {
                    var wObj = workArr[index] as Map? ?? {};
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 8),
                      width: media.width * 0.28,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                wObj["image"].toString(),
                                width: media.width,
                                height: media.width * 0.15,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                width: media.width,
                                height: media.width * 0.15,
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.5)),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 0),
                            child: Text(
                              wObj["name"],
                              style: TextStyle(
                                  color: AppColors.secondaryText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "17 Responses",
                style: TextStyle(
                    color: AppColors.secondaryText,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              shrinkWrap: true,
              itemCount:workoutDetailsController.responseArr .length,
              itemBuilder: ((context, index) {
                var rObj = workoutDetailsController.responseArr[index];
               return ResponseRowWidget(rObj: rObj,);
              
              
              }),
            )
          ],
        ),
        
      ),
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
