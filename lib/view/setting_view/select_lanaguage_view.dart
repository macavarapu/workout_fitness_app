import 'package:flutter/material.dart';
import 'package:workout_fitness_app/common_widgets/lanaguage_row.dart';
import 'package:workout_fitness_app/constants/app_color_constants.dart';



class SelectLanguageView extends StatefulWidget {
  final Function(Map) didSelect;
  const SelectLanguageView({super.key, required this.didSelect });

  @override
  State<SelectLanguageView> createState() => _SelectLanguageViewState();
}

class _SelectLanguageViewState extends State<SelectLanguageView> {
  int selectIndex = 0;
  List langArr = [
    {"name": "English", },
    {"name": "Spanish", },
    {"name": "Hindi", },
    {"name": "Arabic",},
    {"name": "Portuguese", },
    {"name": "Bengali",},
    {"name": "Russian",},
    {"name": "Vietnamese",}
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
          "Language",
          style: TextStyle(
              color: AppColors.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          itemBuilder: (context, index) {
            var tObj = langArr[index] as Map? ?? {};

            return LanguageRow(
                tObj: tObj,
                isActive: selectIndex == index  , onPressed: (){
                  setState(() {
                    selectIndex = index;
                  });
                },);
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.black26,
              height: 1,
            );
          },
          itemCount: langArr.length),
      
    );
  }
}
