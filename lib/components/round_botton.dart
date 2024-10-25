import 'package:flutter/material.dart';
import 'package:workout_fitness_app/constants/app_color_constants.dart';
import 'package:workout_fitness_app/constants/text_styles.dart';

enum RoundBottonType { primary, primaryText }

class RoundBotton extends StatelessWidget {
  final String title;
  void Function()? onPressed;
  final RoundBottonType type;
  final double? fontSize;
  final FontWeight? fontWeight;
  RoundBotton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.type = RoundBottonType.primary, 
       this.fontSize=20,
        this.fontWeight=FontWeight.w700 ,
       });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      textColor:  type==RoundBottonType.primary?AppColors.white:AppColors.primary,
      color:  type==RoundBottonType.primary?AppColors.primary:AppColors.white,
      height: 50,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: Text(
        title,
        style: TextStyle(
            color: type == RoundBottonType.primary ? AppColors.white :  AppColors.primary, fontSize: fontSize, fontWeight: fontWeight),
        // style: TextStyles.body3(
        //   fontSize: 24,
        //   color: type == RoundBottonType.primary ? AppColors.white :  AppColors.primary,
        // ),
      ),
    );
  }
}
