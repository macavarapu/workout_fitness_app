import 'package:flutter/material.dart';
import 'package:workout_fitness_app/constants/app_color_constants.dart';

class MenuCellwidget extends StatelessWidget {
  final  mObj;
  final VoidCallback onPressed;
  const MenuCellwidget({super.key, required this.mObj, required this.onPressed});

  @override
  Widget build(BuildContext context) {
  
    return  InkWell(
      onTap: onPressed,
      child: Container(
             decoration: BoxDecoration(
                   color: AppColors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  offset: Offset(0,2),
                  
                ),
                
              ],
              
             ),
             
             child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(mObj.image,width: 35,height: 35,),
                SizedBox(height: 10,),
               Text(mObj.name,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: AppColors.secondaryText),),
              ],
             ),
              
             ),
             
             
             
      );
      
    
  }
}