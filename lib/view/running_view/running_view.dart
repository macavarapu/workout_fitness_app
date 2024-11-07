import 'package:flutter/material.dart';
import 'package:workout_fitness_app/common_widgets/runnig_time_view_widget.dart';
import 'package:workout_fitness_app/common_widgets/running_density_widget.dart';
import 'package:workout_fitness_app/common_widgets/running_heartview_widget..dart';
import 'package:workout_fitness_app/common_widgets/running_length_view_widget.dart';
import 'package:workout_fitness_app/common_widgets/running_speed_view_widget.dart';
import 'package:workout_fitness_app/common_widgets/running_tap_button_widget.dart';
import 'package:workout_fitness_app/constants/app_color_constants.dart';
import 'package:workout_fitness_app/constants/image_constants.dart';
import 'package:workout_fitness_app/constants/string_constants.dart';

class RunningView extends StatefulWidget {
  const RunningView({super.key});

  @override
  State<RunningView> createState() => _RunningViewState();
}

class _RunningViewState extends State<RunningView> {
    int selectTab = 0;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 30,
            color: Colors.black,
          ),
        ),
        title: Text(
          StringConstants.running,
          style: TextStyle(
              color: AppColors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 70,
            color: AppColors.primary,
            alignment: Alignment.bottomCenter,
            child: Container(
              width: media.width * 0.9,
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )),
                   child: Row(
              children: [
                RunningTopButton
                (icon: ImageConstants.r_distance,
                 isActive: selectTab==0,
                  onPressed: (){
                    setState(() {
                      selectTab=0;
                    });
                  }
                  ),
                   Container(width: 1, height: 40, color: AppColors.gray),
                    RunningTopButton(
                      icon: ImageConstants.dashboard_half,
                 isActive: selectTab==1,
                  onPressed: (){
                    setState(() {
                      selectTab=1;
                    });
                  }
                  ),
                   Container(width: 1, height: 40, color: AppColors.gray),
                    RunningTopButton(
                      icon: ImageConstants.time_wall_clock,
                 isActive: selectTab==2,
                  onPressed: (){
                    setState(() {
                      selectTab=2;
                    });
                  }
                  ),
                     Container(width: 1, height: 40, color: AppColors.gray),
                    RunningTopButton(
                      icon: ImageConstants.r_heartbeat,
                 isActive: selectTab==3,
                  onPressed: (){
                    setState(() {
                      selectTab=3;
                    });
                  }
                  ),
                     Container(width: 1, height: 40, color: AppColors.gray),
                    RunningTopButton(
                      icon: ImageConstants.group,
                 isActive: selectTab==4,
                  onPressed: (){
                    setState(() {
                      selectTab=4;
                    });
                  }
                  ),
                  

              ],
            ),
            ),
          ),
            Container(
              width: media.width * 0.9,
              height: media.height * 0.65,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 2,
                        offset: Offset(0, 1))
                  ]),
              child: Column(children: [
                   if(selectTab == 0)
                    RunningLengthView(height: media.height * 0.65),
                    if(selectTab == 1)
                    RunningSpeedView(height: media.height * 0.65),
                  
                  if(selectTab == 2)
                    RunningTimerView(height: media.height * 0.65),

                  if(selectTab == 3)
                   RunningHeartView(height: media.height * 0.65),

                  if(selectTab == 4)
                   RunningDensityView(height: media.height * 0.65),
                   

              ],)
            ),
       
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Image.asset(
                          ImageConstants.settings,
                          height: 35,
                          width: 35,
                        ),
                        Text(StringConstants.settings,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w700),
                        ),
                      ],
                    )),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        height: 45,
                        width: media.width*0.5,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          ImageConstants.r_pause,
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                // InkWell(
                // onTap: (){}, child: Column(
                //   children: [
                //     Image.asset("",height: 30,width: 30,),
                //     Text(StringConstants.settings),
                //   ],
                // )
                // ),
                InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Image.asset(
                          ImageConstants.unlock,
                          height: 35,
                          width: 35,
                        ),
                        Text(
                          StringConstants.unlock,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w700),
                        ),
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
