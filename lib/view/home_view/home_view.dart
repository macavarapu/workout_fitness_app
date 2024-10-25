import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_fitness_app/common_widgets/exercises_widget.dart';
import 'package:workout_fitness_app/components/round_botton.dart';
import 'package:workout_fitness_app/constants/app_color_constants.dart';
import 'package:workout_fitness_app/constants/image_constants.dart';
import 'package:workout_fitness_app/constants/string_constants.dart';
import 'package:workout_fitness_app/constants/text_styles.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List dataArr = [
    {
      "name": StringConstants.running,
      "image": ImageConstants.running,
    },
    {"name": StringConstants.pushUp, "image": ImageConstants.pushUp},
    {
      "name": StringConstants.legExtension,
      "image": ImageConstants.legExtension,
    }
  ];
  List trainingDayArr = [
    {
      "name": StringConstants.trainingDay1,
    },
    {
      "name": StringConstants.trainingDay2,
    },
    {
      "name": StringConstants.trainingDay3,
    }
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primary,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 30,
          ),
        ),
        title: Text(
          StringConstants.fitnessapplication,
          style: TextStyles.body1(
              color: AppColors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: SizedBox(
                height: media.width * 0.4,
                width: media.width,
                child: CarouselSlider.builder(
                    options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 0.5,
                        enlargeCenterPage: true,
                        enableInfiniteScroll: false,
                        viewportFraction: 0.65,
                        enlargeFactor: 0.4,
                        enlargeStrategy: CenterPageEnlargeStrategy.zoom),
                    itemCount: dataArr.length,
                    itemBuilder:
                        (BuildContext context, int itemIndex, int index) {
                      var dObj = dataArr[index] as Map? ?? {};
                      return Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child:
                            Stack(alignment: Alignment.bottomLeft, children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                dObj["image"].toString(),
                                height: double.maxFinite,
                                width: double.maxFinite,
                                fit: BoxFit.cover,
                              )),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              dObj["name"].toString(),
                              style: TextStyles.body1(
                                  color: AppColors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ]),

                        //child: Text(itemIndex.toString()),
                      );
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: SizedBox(
                height: media.width * 1.2,
                width: media.width,
                child: CarouselSlider.builder(
                    options: CarouselOptions(
                        autoPlay: false,
                        aspectRatio: 0.6,
                        enlargeCenterPage: true,
                        enableInfiniteScroll: false,
                        viewportFraction: 0.85,
                        enlargeFactor: 0.4,
                        enlargeStrategy: CenterPageEnlargeStrategy.zoom),
                    itemCount: trainingDayArr.length,
                    itemBuilder:
                        (BuildContext context, int itemIndex, int index) {
                      var tObj = trainingDayArr[index] as Map? ?? {};
                      return Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              tObj["name"].toString(),
                              style: TextStyles.body1(
                                  color: AppColors.secondaryText,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Week 1",
                              style: TextStyles.body1(
                                  color: AppColors.secondaryText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                           Spacer(),
                            ExercisesrowWidget(
                              number: "1", 
                              title: "Exercises 1", 
                              time: "7 min",
                              isActive: true,
                               onPressed: () {  },
                              ),
                               ExercisesrowWidget(
                              number: "2", 
                              title: "Exercises 2", 
                              time: "15 min",
                               onPressed: () {  },
                              ),
                               ExercisesrowWidget(
                              number: "3", 
                              title: "Finished", 
                              time: "5 min",
                              isLast: true,
                               onPressed: () {  },
                              ),
                                 Spacer(),
                                SizedBox(
                            width: 150,
                            height: 40,
                            child: RoundBotton(
                                title: "Start",
                                onPressed: () {
                                  if (index % 2 == 0) {
                                   Navigator.pushNamed(context, "/workoutview");
                                   print("singam");
                                          
                                  } else {
                                    Navigator.pushNamed(context, "/workoutview2");
                                
                                  }
                                }),
                          ),

                           
                         
                            SizedBox(height: 20,),
                          ],
                        ),

                       
                      );
                    }),
              ),
            )
          ],
        ),
      ),
       
    );
  }
}
