import 'package:get/get.dart';
import 'package:workout_fitness_app/constants/image_constants.dart';
import 'package:workout_fitness_app/constants/string_constants.dart';
import 'package:workout_fitness_app/view_model/workout_view_model.dart';

class WorkoutController  extends GetxService{
  var  WorkArr=<WorkoutViewModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    WorkArr.addAll([
WorkoutViewModel(
  name: StringConstants.climber, 
  image: ImageConstants.ladies,
   title: StringConstants.workout,
   subtitle:StringConstants. personalizedworkoutswillhelpnyougainstrength,
  ),
 WorkoutViewModel(
  name: StringConstants.climber, 
  image: ImageConstants.running,
   title: StringConstants.workout,
   subtitle:StringConstants. personalizedworkoutswillhelpnyougainstrength,
  ),
  WorkoutViewModel(
  name: StringConstants.climber, 
  image: ImageConstants.legExtension,
   title: StringConstants.workout,
   subtitle:StringConstants. personalizedworkoutswillhelpnyougainstrength,
  ),
  WorkoutViewModel(
  name: StringConstants.climber, 
  image: ImageConstants.pushUp,
   title: StringConstants.workout,
   subtitle:StringConstants. personalizedworkoutswillhelpnyougainstrength,
  ),
  
    ]);
  }
}