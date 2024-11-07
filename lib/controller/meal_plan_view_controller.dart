import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:workout_fitness_app/constants/image_constants.dart';
import 'package:workout_fitness_app/constants/string_constants.dart';
import 'package:workout_fitness_app/view_model/meal_plan_view_model.dart';

class MealPlanController extends GetxService {
  var planArr = <MealPlanModel>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    planArr.addAll([
      MealPlanModel(
          name: StringConstants.breafast,
          image: ImageConstants.f1,
          title: StringConstants.mealPla,
          subtitle: StringConstants.personalizedworkoutswillhelpnyougainstrengt,
          ),
           MealPlanModel(
          name: StringConstants.snack,
          image: ImageConstants.f2,
          title: StringConstants.mealPla,
          subtitle: StringConstants.personalizedworkoutswillhelpnyougainstrengt,
          ),
           MealPlanModel(
          name: StringConstants.breafast,
          image: ImageConstants.f1,
          title: StringConstants.mealPla,
          subtitle: StringConstants.personalizedworkoutswillhelpnyougainstrengt,
          ),
           MealPlanModel(
          name: StringConstants.breafast,
          image: ImageConstants.f3,
          title: StringConstants.mealPla,
          subtitle: StringConstants.personalizedworkoutswillhelpnyougainstrengt,
          ),
           MealPlanModel(
          name: StringConstants.snack,
          image: ImageConstants.f4,
          title: StringConstants.mealPla,
          subtitle: StringConstants.personalizedworkoutswillhelpnyougainstrengt,
          ),
    ]);
  }
}

