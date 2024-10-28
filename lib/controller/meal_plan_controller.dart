import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:workout_fitness_app/constants/image_constants.dart';
import 'package:workout_fitness_app/constants/string_constants.dart';
import 'package:workout_fitness_app/controller/login_controller.dart';
import 'package:workout_fitness_app/view_model/meal_plan_view_model.dart';

class MealPlanController extends GetxService {
  var meanplanArr = <MealPlanViewModel>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    meanplanArr.addAll([
      MealPlanViewModel(
          name: StringConstants.breafast,
          title: StringConstants.vegetableSandwich,
          image: ImageConstants.f1),
      MealPlanViewModel(
          name: StringConstants.snack,
          title: StringConstants.boatnutbutte,
          image: ImageConstants.f2),
      MealPlanViewModel(
          name: StringConstants.breafast,
          title: StringConstants.vegetableSandwich,
          image: ImageConstants.f3),
      MealPlanViewModel(
          name: StringConstants.snack,
          title: StringConstants.boatnutbutte,
          image: ImageConstants.f4),
    ]);
  }
}
