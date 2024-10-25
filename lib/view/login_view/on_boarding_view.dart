import 'package:flutter/material.dart';
import 'package:workout_fitness_app/components/round_botton.dart';
import 'package:workout_fitness_app/constants/app_color_constants.dart';
import 'package:workout_fitness_app/constants/image_constants.dart';
import 'package:workout_fitness_app/constants/string_constants.dart';
import 'package:workout_fitness_app/constants/text_styles.dart';

import '../../common_widgets/ResponsiveWidget.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  PageController? controller = PageController();
  int selectPage = 0;
  //final Map pObj;

  List<Map<String, String>> pageArr = [
    {
      "title": StringConstants.haveagoodhealth,
      "subtitle":
          StringConstants.beinghealthyisallnohealthisnothingnSowhydonotwe,
      "image": ImageConstants.on_board_1,
    },
    {
      "title": StringConstants.bestronger,
      "subtitle": StringConstants
          .take30minutesofbodybuildingeverydayntogetphysicallyfitandhealthy,
      "image": ImageConstants.on_board_2
    },
    {
      "title": StringConstants.havenicebody,
      "subtitle": StringConstants.badbodyshape,
      "image": ImageConstants.on_board_3
    }
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller?.addListener(() {
      selectPage = controller?.page?.round() ?? 0;
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    // double height = ResponsiveWidget.isMobile(context)
    //   ? 300
    //   : ResponsiveWidget.isTablet(context)
    //       ? 500
    //       : 700;
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Stack(
        children: [
          Image.asset(
            ImageConstants.on_board,
            width:
            //ResponsiveWidget.isDesktop(context)? 10: 20,
             media.width,
            height:
            //ResponsiveWidget.isDesktop(context)? 20: 20,
             media.height,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: PageView.builder(
              controller: controller,
                itemCount: pageArr.length,
                itemBuilder: (context, index) {
                  var pObj = pageArr[index] as Map? ?? {};
                  return Column(
                    children: [
                       SizedBox(height: media.width*0.1,),
                      Text(
                        pObj["title"].toString(),
                        style: TextStyles.subtitle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: media.width*0.20,),
                      // Image.asset(ImageConstants.on_board_3),
                      Image.asset(
                        pObj["image"].toString(),
                        width: media.width * 0.9,
                        height: media.width * 0.9,
                        fit: BoxFit.contain,
                      ),
                        SizedBox(height: media.width*0.1,),
                      Text(
                        pObj["subtitle"].toString(),
                        style: TextStyles.body1(
                          fontSize: 18,
                          color: AppColors.white,
                        ),
                      ),

                    ],
                  );
                }),
          ),
          SafeArea(
            child: Column(
              children: [
                Spacer(),
              //  SizedBox(height: media.width,),
                 Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: pageArr.map((pObj) {
                    var index = pageArr.indexOf(pObj);
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color:  selectPage == index ? AppColors.white : AppColors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(6)
                    ),
                  );

                } ).toList() ,

              ),
             // SizedBox(height: media.width*0.1,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal:25 ),
                child: RoundBotton(title: "Start",   type: RoundBottonType.primaryText,
                 onPressed: (){
                  Navigator.pushNamed(context, "/step1view");
                 }, 
                 ),
              ),
             // SizedBox(height: media.width*0.05,),

              ],
            ),
          )
        ],
      ),
    );
  }
}
