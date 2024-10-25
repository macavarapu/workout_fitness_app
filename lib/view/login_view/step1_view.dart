import 'package:flutter/material.dart';
import 'package:workout_fitness_app/components/round_botton.dart';
import 'package:workout_fitness_app/constants/app_color_constants.dart';
import 'package:workout_fitness_app/constants/image_constants.dart';
import 'package:workout_fitness_app/constants/string_constants.dart';
import 'package:workout_fitness_app/constants/text_styles.dart';

class Step1View extends StatefulWidget {
  const Step1View({super.key});

  @override
  State<Step1View> createState() => _Step1ViewState();
}

class _Step1ViewState extends State<Step1View> {
  @override
  Widget build(BuildContext context) {
      var media = MediaQuery.sizeOf(context);
    return Scaffold(

      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: 30,)),
         title:   Text(
            StringConstants.step1of3,
            style: TextStyles.body1(fontSize: 20,color: AppColors.primary,),
           
          ), 
          ),
      body:  SafeArea(
          child: Column(
            children: [
             
              const Spacer(),
              Image.asset(
               ImageConstants.step_1, 
                width: media.width * 0.6,
                height: media.width * 0.6,
                fit: BoxFit.contain,
              ),
             

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Text(
              StringConstants.welcometoCapiFitnessApplication,
             
              textAlign:  TextAlign.center,
              style: TextStyles.body1(
                color: AppColors.secondaryText,
                fontSize: 24,
              )
              
            ),
          ),

           Text(
            StringConstants.personalizedorkoutswillhelpyougainstrengthgetinbettershapeandnembraceahealthylifestyle,
           
            textAlign: TextAlign.center,
            style: TextStyles.body2(
              fontSize: 16,
              color:  AppColors.secondaryText,
              fontWeight: FontWeight.w300,
            )
           
          ),
              const Spacer(),
              
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
                child: RoundBotton(
                  title: "Get Started",
                  onPressed: () {
                    Navigator.pushNamed(context, "/step2view");
                   // Navigator.push(context, MaterialPageRoute(builder: (context) => const Step2View() ));
                  },
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [1, 2, 3].map((pObj) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                        color: 1 == pObj ? AppColors.primary : AppColors.gray.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(6)),
                  );
                }).toList(),
              ),


             const SizedBox(height: 15,)
            ],
          ),
        )
     
    );

  }
}