import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workout_fitness_app/constants/app_color_constants.dart';

class SettingSliderRow extends StatelessWidget {
  final Map tObj;
  final Function(double)? onChanged;
  const SettingSliderRow(
      {super.key, required this.tObj, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                tObj["name"],
                style: TextStyle(
                    color: AppColors.secondaryText,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "1",
                style: TextStyle(
                    color: AppColors.secondaryText.withOpacity(0.5),
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
              Expanded(
                child: Slider(
                    activeColor: AppColors.primary,
                    max: 100.0,
                    min: 1.0,
                    value: double.tryParse(tObj["value"]) ?? 1,
                    onChanged: onChanged),
              ),
              Text(
                "100",
                style: TextStyle(
                    color: AppColors.secondaryText.withOpacity(0.5),
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
