import 'package:flutter/material.dart';
import 'package:workout_fitness_app/common_widgets/ffitness_level_select.dart';
import 'package:workout_fitness_app/components/round_botton.dart';
import 'package:workout_fitness_app/constants/app_color_constants.dart';
import 'package:workout_fitness_app/constants/image_constants.dart';
import 'package:workout_fitness_app/constants/string_constants.dart';
import 'package:workout_fitness_app/constants/text_styles.dart';

class Step2View extends StatefulWidget {
  const Step2View({super.key});

  @override
  State<Step2View> createState() => _Step2ViewState();
}

class _Step2ViewState extends State<Step2View> {
  var selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.white,
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 30,
              )),
              title: Text(
              StringConstants.step20f3,
              style: TextStyles.body1(
              fontSize: 20,
              color: AppColors.primary,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Text(StringConstants.selectyourfitnesslevel,
                    textAlign: TextAlign.center,
                    style: TextStyles.body1(
                      color: AppColors.secondaryText,
                      fontSize: 24,
                    )),
              ),
              FitnessLevelSelector(
                title: StringConstants.beginer, 
                subtitle: StringConstants.youarenewtofitnesstraining, 
                isSelect: selectIndex==0, 
                onPressed: (){
                  setState(() {
                    selectIndex=0;
                  });
                }
                ),
                 FitnessLevelSelector(
                title: StringConstants.intermediate, 
                subtitle: StringConstants.youhavebeentrainingregularly, 
                isSelect: selectIndex==1, 
                onPressed: (){
                  setState(() {
                    selectIndex=1;
                  });
                }
                ),
                 FitnessLevelSelector(
                title: StringConstants.advanced, 
                subtitle: StringConstants.yourefitandreadyforanintensiveworkoutplan, 
                isSelect: selectIndex==2, 
                onPressed: (){
                  setState(() {
                    selectIndex=2;
                  });
                }
                ),
           
              const Spacer(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
                child: RoundBotton(
                  title: "Next",
                  onPressed: () {
                    Navigator.pushNamed(context, "/step3view");
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => const Step2View() ));
                  },
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [1, 2, 3].map((pObj) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                        color: 2 == pObj
                            ? AppColors.primary
                            : AppColors.gray.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(6)),
                  );
                }).toList(),
              ),

              const SizedBox(
                height: 15,
              )
            ],
          ),
        ));
  }
}
