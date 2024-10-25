import 'package:flutter/material.dart';
import 'package:workout_fitness_app/constants/app_color_constants.dart';
import 'package:workout_fitness_app/constants/image_constants.dart';
import 'package:workout_fitness_app/constants/text_styles.dart';

class ExercisesrowWidget extends StatelessWidget {
  final String number;
  final String title;
  final String time;
  final bool isActive;
  final bool isLast;
  final VoidCallback onPressed;
  const ExercisesrowWidget(
      {super.key,
      required this.number,
      required this.title,
      required this.time,
       this.isActive=false,
     required this.onPressed,
        this.isLast=false,
       });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.5),
                color:  isActive?  AppColors.primary.withOpacity(0.3):AppColors.gray.withOpacity(0.3),
              ),
              alignment: Alignment.center,
      
              child: Container(
                 width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    color: isActive ? AppColors.primary : AppColors.gray,
                    borderRadius: BorderRadius.circular(12.5),
                  ),
                  alignment: Alignment.center,
                  child: isLast
                      ? Image.asset(
                          ImageConstants.star,
                          width: 15,
                          height: 15,
                        )
                      : Text(
                          number,
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
      
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      //"Exercises 1",
                      style: TextStyles.body1(
                          color: AppColors.secondaryText,
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                    //SizedBox(height: 15,),
                    Text(
                      time,
                      //"7 min",
                      style: TextStyles.body1(
                          color: AppColors.secondaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Image.asset(
              ImageConstants.information,
              width: 20,
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
