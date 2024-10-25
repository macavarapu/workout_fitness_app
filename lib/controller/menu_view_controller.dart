import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:workout_fitness_app/constants/image_constants.dart';
import 'package:workout_fitness_app/constants/string_constants.dart';
import 'package:workout_fitness_app/controller/login_controller.dart';
import 'package:workout_fitness_app/view_model/menu_view_model.dart';

class MenuViewController  extends GetxService {
  var menuArr=<MenuViewModel>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    menuArr.addAll([
     MenuViewModel(
      name: StringConstants.home,
       image: ImageConstants.menu_home, 
       tag: 1
       ),
         MenuViewModel(
      name: StringConstants.weight,
       image: ImageConstants.menu_weight, 
       tag: 2
       ),
         MenuViewModel(
      name: StringConstants.traningplan,
       image: ImageConstants.menu_traning_plan, 
       tag: 3
       ),
         MenuViewModel(
      name: StringConstants.trainingStatus,
       image: ImageConstants.menu_status, 
       tag: 4
       ),
         MenuViewModel(
      name: StringConstants.mealPlan,
       image: ImageConstants.menu_meal_plan, 
       tag: 5
       ),
         MenuViewModel(
      name: StringConstants.schedule,
       image: ImageConstants.menu_schedule, 
       tag: 6
       ),
         MenuViewModel(
      name: StringConstants.running,
       image: ImageConstants.menu_running, 
       tag: 7
       ),
         MenuViewModel(
      name: StringConstants.exercises,
       image: ImageConstants.menu_exercises, 
       tag: 8
       ),
         MenuViewModel(
      name: StringConstants.tips,
       image: ImageConstants.menu_tips, 
       tag: 9
       ),
         MenuViewModel(
      name: StringConstants.settings,
       image: ImageConstants.menu_settings, 
       tag: 10
       ),
         MenuViewModel(
      name: StringConstants.support,
       image: ImageConstants.menu_support, 
       tag: 11
       ),

    ]);
  }
  
}
