

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:workout_fitness_app/common_widgets/menu_cell._widgets.dart';
import 'package:workout_fitness_app/common_widgets/plan_row_widget.dart';

import 'package:workout_fitness_app/constants/app_color_constants.dart';
import 'package:workout_fitness_app/constants/image_constants.dart';
import 'package:workout_fitness_app/constants/string_constants.dart';
import 'package:workout_fitness_app/controller/menu_view_controller.dart';
import 'package:workout_fitness_app/controller/plan_row_controller.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  ///used to getx
  final MenuViewController menuViewController=Get.put(MenuViewController());
  //final PlanRowController planRowController=Get.put(PlanRowController());
    List planArr = [
    {
      "name": StringConstants.running, 
      "icon": ImageConstants.menu_running,
      "right_icon": "",
    },
    {
      "name":StringConstants.yoga,
      "icon": ImageConstants.yoga,
      "right_icon": ImageConstants.information,
    },
    {
      "name": StringConstants.workout,
      "icon":ImageConstants.workout,
      "right_icon": "",
    },
    {
      "name": StringConstants.walking,
      "icon": ImageConstants.walking,
      "right_icon": "",
    },
    {
      "name": StringConstants.fitness,
      "icon": ImageConstants.fitness,
      "right_icon": ImageConstants.information,
    },
  {
      "name": StringConstants.strength,
      "icon": ImageConstants.strength,
      "right_icon": "",
    }
  ];

 
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  }
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
    //   drawer: Drawer(
      drawer: Drawer(
          width: media.width,
          backgroundColor: Colors.transparent,
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5.0,
              sigmaY: 5,
            ),
            child: Stack(
              children: [
                Container(
                  width: media.width * 0.78,
                  decoration: BoxDecoration(color: AppColors.white),
                  child: SafeArea(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Column(
                      children: [
                        Container(
                          height: kTextTabBarHeight,
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(22.5),
                                child: Image.asset(ImageConstants.u1,
                                    width: 45, height: 45, fit: BoxFit.cover),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Text(
                                  "Traning Plan",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: AppColors.secondaryText,
                                      fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Divider(
                          color: Colors.black26,
                          height: 1,
                        ),
                        Expanded(
                            child: ListView.builder(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 50),
                                itemCount: planArr.length,
                                itemBuilder: (context, index) {
                                 var itemObj = planArr[index] as Map? ?? {};
                               

                                  return PlanRow(
                                    mObj: itemObj,
                                    onPressed: () {
                                       Navigator.pop(context);
                                      if (index == 1) {
                                        Navigator.pushNamed(context, "/yogaview");
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             const YogaView()));
                                      }
                                    },
                                  );

                                })
                                ),
                        const Divider(
                          color: Colors.black26,
                          height: 1,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: kTextTabBarHeight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Switch Account",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: AppColors.secondaryText,
                                    fontWeight: FontWeight.w700),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Image.asset("assets/images/next.png",
                                    width: 18, height: 18),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: kToolbarHeight - 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Image.asset(
                                "assets/images/meun_close.png",
                                width: 25,
                                height: 25,
                              )),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          ),
   
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                 
                backgroundColor: Colors.black,
                expandedHeight: media.width * 0.6,
                collapsedHeight: kToolbarHeight+20,
                flexibleSpace: Stack(
                    alignment: Alignment.bottomLeft,
                  children: [
                    Image.asset(
                      ImageConstants.ladies,
                      width: media.width,
                      height: media.width * 0.8,
                      fit: BoxFit.cover,
                     
                    ),
                    Container(
                       width: media.width,
                      height: media.width * 0.8,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [Colors.transparent,Colors.black])
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 30),
                      child: Row(
                        children: [
                          Container(
                            width: 54,
                            height: 54,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            alignment: Alignment.center,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.asset(ImageConstants.u1,width: 50,height: 50,fit: BoxFit.cover,)),
                          ),
                          SizedBox(width: 15,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("Code for Any",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: AppColors.white),),
                                SizedBox(height: 8,),
                                 Text("profile",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: AppColors.white),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ];
          },
          body: GridView.builder(
              itemCount:menuViewController. menuArr.length,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
              var  mObj=menuViewController.menuArr[index] ;
             
                return MenuCellwidget(
                  mObj: mObj,
                   onPressed: (){
                    switch(mObj.tag){
                      case  1:
                      Navigator.pushNamed(context, "/homeview");
                      break;
                      case 2:
   
                      Navigator.pushNamed(context, "/weightView");
                       break;
                      case 6:
                      Navigator.pushNamed(context, "/scheduleview");
                      break;
                      case 8:
                      Navigator.pushNamed(context, "/exerciseView");
                      break;
                      case 5:
                        Navigator.pushNamed(context, "/mealPlanview");
                      break;
                      case  3:
                      Scaffold.of(context).openDrawer();
                      break;
                      default:
                      
                      

                     
                    }
                   }
                   );
                // return Container(
                //   color: Colors.red,
                // );
              })),
    );
  }
}
