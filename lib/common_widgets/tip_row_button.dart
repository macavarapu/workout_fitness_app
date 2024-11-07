import 'package:flutter/material.dart';
import 'package:workout_fitness_app/constants/app_color_constants.dart';
import 'package:workout_fitness_app/constants/image_constants.dart';

class TipRowButton extends StatelessWidget {
  const TipRowButton(
      {super.key,
      required this.tObj,
      required this.onPressed,
      required this.isActive});
  final Map tObj;
  final VoidCallback onPressed;
  final bool isActive;

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
                  fontSize: 18,
                  color: isActive ? AppColors.primary : AppColors.secondaryText,
                  fontWeight: FontWeight.w700),
            ),
            Image.asset(
              ImageConstants.next,
              width: 20,
              height: 20,
              color: isActive ? AppColors.primary : AppColors.secondaryText,
            ),
          ],
        ),
      ),
    );
  }
}
