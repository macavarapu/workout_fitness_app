import 'dart:math';

import 'package:flutter/material.dart';
import 'package:workout_fitness_app/common_widgets/tip_row_button.dart';
import 'package:workout_fitness_app/constants/app_color_constants.dart';
import 'package:workout_fitness_app/constants/image_constants.dart';
import 'package:workout_fitness_app/view/tips_view/tips_detail_view.dart';

class TipsView extends StatefulWidget {
  const TipsView({super.key});

  @override
  State<TipsView> createState() => _TipsViewState();
}

class _TipsViewState extends State<TipsView> {
  List TipsArr=[
    {"name":"About Traning"}, 
     {"name":"How to weight loss?"}, 
      {"name":"Introducing about meal plan"}, 
       {"name":"Water and food"}, 
        {"name":" Drink water"}, 
         {"name":"How many times a day to eat"}, 
          {"name":"Become  stronger"}, 
           {"name":"Shoes To Training"}, 
            {"name":"Appeal Tips"}, 
  ];
  @override
  Widget build(BuildContext context) {
      var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Tips",
          style: TextStyle(fontSize: 20,color:Colors.white,fontWeight: FontWeight.w700),
        ),
        backgroundColor: AppColors.primary,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.white,
            )),
      ),
      body: ListView.separated(
        
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        itemBuilder: (context ,index){
            var tObj=TipsArr[index] as Map? ?? {};
          return TipRowButton(
          
            tObj: tObj,
            onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TipsDetailView(tObj: tObj,) ));
              },
             isActive: index==0,
             );
       
      },
       separatorBuilder: (context,index){
        return Divider(
          color: Colors.black26,
          height: 1,
        );
       },
        itemCount: TipsArr.length,
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
