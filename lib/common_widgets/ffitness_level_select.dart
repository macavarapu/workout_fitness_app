// import 'package:flutter/material.dart';

// class FfitnessLevelSelect extends StatelessWidget {
//   const FfitnessLevelSelect({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return   Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       height: media.width * 0.01,
//                     ),
//                     Text(StringConstants.beginer,
//                         style: TextStyles.body2(
//                           fontSize: 20,
//                           color: AppColors.secondaryText,
//                           fontWeight: FontWeight.w700,
//                         )),
//                     SizedBox(
//                       height: media.width * 0.05,
//                     ),
//                     InkWell(
//                       onTap: () {
//                         setState(() {
//                           SelectIndex=0;
//                         });
//                       },
//                       child: Padding(
//                         padding:  EdgeInsets.only(
//                             left: 15,
//                             top: media.width * 0.05,
//                             bottom: media.width * 0.05),
//                         child: Row(
//                           children: [
//                             Expanded(
//                               child: Text(
//                                 StringConstants.youarenewtofitnesstraining,
//                                 style: TextStyle(fontSize: 18,
//                                 fontWeight: FontWeight.w300,
//                                 color: SelectIndex==0?AppColors.primary:AppColors.secondaryText,
                                
//                                 ),
                                
//                               ),
//                             ),
//                             if(SelectIndex==0)
//                             Image.asset(
//                               ImageConstants.tick,
//                               width: 20,
//                               height: 20,
//                             ),
//                           ],
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               );
//   }
// }

import 'package:flutter/material.dart';
import 'package:workout_fitness_app/constants/app_color_constants.dart';
import 'package:workout_fitness_app/constants/image_constants.dart';


class FitnessLevelSelector extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onPressed;
  final bool isSelect;

  const FitnessLevelSelector({super.key, required this.title, required this.subtitle, required this.isSelect, required this.onPressed });

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.secondaryText,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    InkWell(
                      onTap: onPressed,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 15,
                            top: media.width * 0.05,
                            bottom: media.width * 0.05),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                subtitle,
                                style: TextStyle(
                                    color: isSelect
                                        ? AppColors.primary
                                        : AppColors.secondaryText,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            if (isSelect)
                              Image.asset(
                                ImageConstants.tick,
                                width: 20,
                                height: 20,
                              )
                          ],
                        ),
                      ),
                    ),
                    Divider(color: AppColors.divider, height: 1),
                    SizedBox(height: media.width * 0.05),
                  ],
                ),
              );
  }
}