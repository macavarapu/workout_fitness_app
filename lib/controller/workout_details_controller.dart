import 'package:get/get.dart';
import 'package:workout_fitness_app/constants/image_constants.dart';
import 'package:workout_fitness_app/constants/string_constants.dart';
import 'package:workout_fitness_app/view_model/workout_detail_model.dart';

class WorkoutDetailsController extends GetxService {
  var responseArr = <WorkoutDetailModel>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    responseArr.addAll([
      WorkoutDetailModel(
        name: StringConstants.mikhailEduardovich,
        time: StringConstants.daysago09,
        image: ImageConstants.u2,
        message:
            StringConstants.loremipsumdolorsitametconsecteturadipiscingelit,
      ),
      WorkoutDetailModel(
        name: StringConstants.mikhailEduardovich,
        time: StringConstants.daysago11,
        image: ImageConstants.u1,
        message:
            StringConstants.loremipsumdolorsitametconsecteturadipiscingelit,
      ),
      WorkoutDetailModel(
        name: StringConstants.mikhailEduardovich,
        time: StringConstants.daysago12,
        image: ImageConstants.u2,
        message:
            StringConstants.loremipsumdolorsitametconsecteturadipiscingelit,
      ),
      WorkoutDetailModel(
        name: StringConstants.mikhailEduardovich,
        time: StringConstants.daysago13,
        image: ImageConstants.u1,
        message:
            StringConstants.loremipsumdolorsitametconsecteturadipiscingelit,
      ),
    ]);
  }
}
