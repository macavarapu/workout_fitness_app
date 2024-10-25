import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:workout_fitness_app/common_widgets/bottom_navagationbar.dart';
import 'package:workout_fitness_app/constants/app_color_constants.dart';
import 'package:workout_fitness_app/constants/image_constants.dart';
import 'package:workout_fitness_app/constants/string_constants.dart';



class YogaView extends StatefulWidget {
  const YogaView({super.key});

  @override
  State<YogaView> createState() => _YogaViewState();
}

class _YogaViewState extends State<YogaView> {
 
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
            icon: Icon(Icons.arrow_back_ios,size: 30,color: Colors.black,),
           
            ),
        title: Text(
          StringConstants.yoga,
          style: TextStyle(
              color: AppColors.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
       
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
             ImageConstants.ladies,
              width: media.width,
              height: media.width * 0.55,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  IgnorePointer(
                    ignoring: true,
                    child: RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 25,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: AppColors.primary,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        ImageConstants.like,
                     
                        width: 20,
                        height: 20,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        ImageConstants.share,
                     
                        width: 20,
                        height: 20,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Text(
                "Tips",
                style: TextStyle(
                    color: AppColors.secondaryText,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
              child: Text("   Lore ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et  dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.m ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eget lorem dolor sed viverra ipsum nunc aliquet. Hendrerit  gravida rutrum quisque non tellus orci ac. Adipiscing at in tellus integer feugiat scelerisque varius. Quam pellentesque nec nam aliquam sem et tortorconsequat id. Orci eu lobortis elementum nibh tellus molestie nunc non blandit. Dolor morbi non arcu risus quis varius. Magna eget est lorem ipsum dolor sit amet. Ante metus dictum at tempor commodo ullamcorper a lacus. Diam in arcu cursus euismod. Nulla at volutpat diam ut venenatis tellus in metus vulputate. Tempor nec feugiat nisl pretium fusce id velit ut. \n\nFelis eget velit aliquet sagittis id consectetur. Pretium lectus quam id leo in vitae. Eget nunc lobortis mattis aliquam faucibus purus. Aliquet sagittis id consectetur purus. Odio pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus. Donec et odio pellentesque diam volutpat commodo sed egestas. Commodo nulla facilisi nullam vehicula ipsum. Quisque egestas diam in arcu cursus euismod. Et malesuada fames ac turpis egestas sed tempus. Quam viverra orci sagittis eu volutpat. Imperdiet dui accumsan sit amet nulla facilisi morbi tempus. Quis ipsum suspendisse ultrices gravida. Nibh tellus molestie nunc non blandit massa enim nec. Adipiscing enim eu turpis egestas pretium aenean. Sem integer vitae justo eget magna fermentum iaculis eu non.", style: TextStyle(
                      color: AppColors.secondaryText,
                      fontSize: 16),),
            ),
            
          ],
        ),
      ),
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
