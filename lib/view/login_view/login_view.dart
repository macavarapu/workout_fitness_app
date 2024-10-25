import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:workout_fitness_app/common_widgets/responsiveWidget.dart';
import 'package:workout_fitness_app/constants/app_color_constants.dart';
import 'package:workout_fitness_app/constants/string_constants.dart';
import 'package:workout_fitness_app/constants/text_styles.dart';
import 'package:workout_fitness_app/controller/login_controller.dart';
import 'package:workout_fitness_app/view_model/addFormFieldModel.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final LoginController loginController =
      Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
      var media = MediaQuery.sizeOf(context);
    return Scaffold(
        appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primary,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 30,
          ),
        ),
        title: Text(
          StringConstants.login,
          style: TextStyles.body1(
              color: AppColors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        children: [
                SizedBox(
                  width: !ResponsiveWidget.isMobile(context)
                      ? 500
                      : MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17.0),
                    child: Obx(() {
                      // Observe the formFields list to dynamically update the UI
                      return ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap:
                            true, // This allows the ListView to take only the space it needs
                        padding: const EdgeInsets.all(0),
                        itemCount: loginController.Addloginfields.length,
                        itemBuilder: (context, index) {
                          final field =
                              loginController.Addloginfields[index];
                          return _buildTextField(field);
                        },
                      );
                    }),
                  ),
                ),
        ],
      ),
    );
  }
   Widget _buildTextField(AddFormFieldModel field) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        // padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          //color: AppColors.white,
          border: Border.all(color: AppColors.gray),
          borderRadius: BorderRadius.circular(28),
        ),
        child: TextField(
          decoration: InputDecoration(
            labelText: field.label,
            border: InputBorder.none,
            labelStyle: TextStyle(color: AppColors.gray),
            prefixIcon: Icon(
              field.icon,
              color: AppColors.gray,
            ),
          ),
          controller: field.controller,
          focusNode: field.focusNode,
          keyboardType: field.keyboardType,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
   
  }
}


