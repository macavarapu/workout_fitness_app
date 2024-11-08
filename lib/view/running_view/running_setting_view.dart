

import 'package:flutter/material.dart';
import 'package:workout_fitness_app/common_widgets/setting_select_row.dart';
import 'package:workout_fitness_app/common_widgets/setting_slider_row.dart';
import 'package:workout_fitness_app/common_widgets/setting_switchrow.dart';
import 'package:workout_fitness_app/constants/app_color_constants.dart';
import 'package:workout_fitness_app/view/setting_view/connect_view.dart';
import 'package:workout_fitness_app/view/setting_view/select_lanaguage_view.dart';

class Runningsettingview extends StatefulWidget {
  const Runningsettingview({super.key});

  @override
  State<Runningsettingview> createState() => _RunningsettingviewState();
}

class _RunningsettingviewState extends State<Runningsettingview> {
    List settingArr = [
    {"name": "GPS", "type": "switch", "value": "false"},
    {"name": "Auto Push", "type": "switch", "value": "false"},
    {"name": "Pause run for calls", "type": "switch", "value": "false"},
    {"name": "Audio Feedback", "type": "slider", "value": "50"},
    {"name": "Time", "type": "slider", "value": "50"},
    {"name": "Distance", "type": "slider", "value": "50"},
    {"name": "Voice Volume", "type": "switch", "value": "true"},
    {"name": "Time", "type": "switch", "value": "false"},
    {"name": "Distance", "type": "switch", "value": "false"},
    {"name": "Pace", "type": "switch", "value": "false"},
    {"name": "Speed", "type": "switch", "value": "false"},
    {"name": "Calories", "type": "switch", "value": "false"},
  ];

  @override
  Widget build(BuildContext context) {
     var media = MediaQuery.sizeOf(context);
    return Scaffold(
       appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Settings",
          style: TextStyle(fontSize: 20,color:Colors.white,fontWeight: FontWeight.w700),
        ),
        backgroundColor: AppColors.primary,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.white,
            )),
      ),
            body: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          itemBuilder: (context, index) {
            var tObj = settingArr[index] as Map? ?? {};

            if (tObj["type"] == "switch") {
              return SettingSwitchRow(
                  tObj: tObj,
                  onChanged: (newVal) {
                    settingArr[index]["value"] = newVal ? "true" : "false";
                    setState(() {});
                  });
            } else if (tObj["type"] == "slider") {
              return SettingSliderRow(
                  tObj: tObj,
                  onChanged: (newVal) {
                    settingArr[index]["value"] = newVal.toString();
                    setState(() {});
                  });
            } else {
              return Container();
            }
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.black26,
              height: 1,
            );
          },
          itemCount: settingArr.length),
     
    );
  }
}