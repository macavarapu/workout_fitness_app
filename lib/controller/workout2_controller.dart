import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:workout_fitness_app/constants/image_constants.dart';
import 'package:workout_fitness_app/constants/string_constants.dart';
import 'package:workout_fitness_app/controller/login_controller.dart';
import 'package:workout_fitness_app/view_model/workout_view2_model.dart';

class Workout2Controller extends GetxService {
  var WorkArr1=<WorkoutView2Model>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    WorkArr1.addAll([
      WorkoutView2Model(name: StringConstants.pushUp, 
      image: ImageConstants.ladies,
      ),
      WorkoutView2Model(name: StringConstants.legExtension, 
      image: ImageConstants.running,
      ),
      WorkoutView2Model(name: StringConstants.pushUp, 
      image: ImageConstants.legExtension,
      ),
      WorkoutView2Model(name: StringConstants.climber, 
      image: ImageConstants.pushUp,
      ),
    ]);
  }
  
}