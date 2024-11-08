import 'package:flutter/material.dart';
import 'package:workout_fitness_app/common_widgets/connect_row.dart';
import 'package:workout_fitness_app/constants/app_color_constants.dart';



class ConnectView extends StatefulWidget {
  final Function(Map) didSelect;
  const ConnectView({super.key, required this.didSelect});

  @override
  State<ConnectView> createState() => _ConnectViewState();
}

class _ConnectViewState extends State<ConnectView> {
  int selectIndex = 0;
  List connectArr = [
    {
      "name": "Connect to  Fackbook",
      "icon": "assets/images/fb.png",
      "color": Color(0xff6F82FE),
    },
    {
      "name": "Connect to Twitter",
      "icon": "assets/images/twitter.png",
      "color": Color(0xff70C0FC),
    },
    {
      "name": "Connect to Linkedln",
      "icon": "assets/images/Linkdin.png",
      "color": Color(0xff68CCFF),
    },
    {
      "name": "Connect to Pinterest",
      "icon": "assets/images/pinterest.png",
      "color": Color(0xffFF6475),
    },
    {
      "name": "Connect to Reddit",
      "icon": "assets/images/reddit.png",
      "color": Color(0xffFFBD5D),
    },
    {
      "name": "Connect to Tumblr",
      "icon": "assets/images/tumblr.png",
      "color": Color(0xff64B5FF),
    }
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        centerTitle: true,
        elevation: 0.1,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.white,) ,
            ),
        title: Text(
          "Connected",
          style: TextStyle(
              color: AppColors.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              "Choose to Connect social network",
              style: TextStyle(color:AppColors.secondaryText, fontSize: 16),
            ),
          ),
          Expanded(
            child: ListView.builder(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                itemBuilder: (context, index) {
                  var tObj = connectArr[index] as Map? ?? {};

                  return ConnectRow(
                    tObj: tObj,
                    isActive: selectIndex == index,
                    onPressed: () {
                      setState(() {
                        selectIndex = index;
                      });
                    },
                  );
                },
                itemCount: connectArr.length),
          ),
        ],
      ),
    );
  }
}
