import 'package:flutter/material.dart';
import 'package:workout_fitness_app/constants/app_color_constants.dart';
import 'package:workout_fitness_app/view_model/plan_row_model.dart';



class PlanRow extends StatelessWidget {
  final Map mObj;
  final bool isSelect;
  final VoidCallback onPressed;
  const PlanRow({super.key,   this.isSelect = false, required this.onPressed, required this.mObj, });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          children: [
            Image.asset(
              isSelect ? "assets/images/active.png" : mObj["icon"],
              width: 35,
              height: 35,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                mObj["name"],
                style: TextStyle(
                    color: isSelect  ? AppColors.primary : AppColors.secondaryText,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
      
            if(mObj["right_icon"] != "" )
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 25),
               child: Image.asset(
                 mObj["right_icon"],
                width: 25,
                height: 25,
                     ),
             ),
      
          ],
        ),
      ),
    );
  }
}
