import 'package:flutter/widgets.dart';
import 'package:workout_fitness_app/constants/app_color_constants.dart';

class ResponseRowWidget extends StatelessWidget {

  final  rObj;
  
  const ResponseRowWidget({super.key, required this.rObj});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              rObj.image,
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  rObj.name,
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.secondaryText,
                        fontWeight: FontWeight.w700)),
                Text(
                  rObj.time,
                    style: TextStyle(
                        fontSize: 12,
                        color: AppColors.secondaryText,
                        fontWeight: FontWeight.w300)),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  rObj.message,
                    style: TextStyle(
                        fontSize: 16,
                        color: AppColors.secondaryText))
              ],
            ),
          ),
        ],
      ),
    );
  }
}