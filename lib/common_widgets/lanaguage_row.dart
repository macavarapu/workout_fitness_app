import 'package:flutter/material.dart';
import 'package:workout_fitness_app/constants/app_color_constants.dart';



class LanguageRow extends StatelessWidget {
  final Map tObj;
  final VoidCallback onPressed;
  final bool isActive;
  const LanguageRow(
      {super.key,
      required this.tObj,
      required this.isActive,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              tObj["name"],
              style: TextStyle(
                  color: isActive ? AppColors.primary : AppColors.secondaryText,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),

            if(isActive)
            Image.asset(
              "assets/images/tick.png",
              width: 30,
              height: 30
            )
          ],
        ),
      ),
    );
  }
}
