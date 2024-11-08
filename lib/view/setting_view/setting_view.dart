import 'package:flutter/material.dart';
import 'package:workout_fitness_app/common_widgets/setting_select_row.dart';
import 'package:workout_fitness_app/common_widgets/setting_switchrow.dart';
import 'package:workout_fitness_app/constants/app_color_constants.dart';
import 'package:workout_fitness_app/view/setting_view/connect_view.dart';
import 'package:workout_fitness_app/view/setting_view/select_lanaguage_view.dart';

class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
    List settingArr = [
    {"name": "Reminders", "type": "switch", "value": "false"},
    {"name": "Language", "type": "select", "value": "ENGLISH"},
    {"name": "Connected", "type": "select", "value": "Facebook"},
    {"name": "Apple health", "type": "switch", "value": "true"},
    {"name": "Warm-Up", "type": "switch", "value": "false"},
    {"name": "Cool-Down", "type": "switch", "value": "false"},
    {"name": "Auto Push", "type": "switch", "value": "false"},
    {"name": "Pause for Running", "type": "switch", "value": "false"}
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
            } else if (tObj["type"] == "select") {
              return SettingSelectRow(
                  tObj: tObj,
                  onPressed: () {
                    if (tObj["name" ] == "Language") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  SelectLanguageView(didSelect: (newVal) {})));
                    }else{
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ConnectView(didSelect: (newVal) {})));
                    }
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
       bottomNavigationBar: BottomAppBar(
        height: 100,
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {},
                child: Image.asset("assets/images/menu_running.png",
                    width: 25, height: 25),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset("assets/images/menu_meal_plan.png",
                    width: 25, height: 25),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset("assets/images/menu_home.png",
                    width: 25, height: 25),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset("assets/images/menu_weight.png",
                    width: 25, height: 25),
              ),
              InkWell(
                onTap: () {},
                child:
                    Image.asset("assets/images/more.png", width: 25, height: 25),
              ),
            
             
            ],
          ),
        ),

      ),
    );
  }
}