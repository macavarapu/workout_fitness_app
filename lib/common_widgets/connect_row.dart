import 'package:flutter/material.dart';
import 'package:workout_fitness_app/constants/app_color_constants.dart';



class ConnectRow extends StatelessWidget {
  final Map tObj;
  final VoidCallback onPressed;
  final bool isActive;
  const ConnectRow(
      {super.key,
      required this.tObj,
      required this.isActive,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin:  const EdgeInsets.symmetric(vertical: 15),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        decoration: BoxDecoration(
          color: tObj["color"],
          borderRadius: BorderRadius.circular(5)

        ),
        child: Row(
          children: [
            Image.asset(tObj["icon"], width: 30, height: 30),

            const SizedBox(width: 15,),
            Expanded(
              child: Text(
                tObj["name"],
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Image.asset(
              "assets/images/tick.png",
              width: 30,
              height: 30,
              color: isActive ? Colors.green : Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
