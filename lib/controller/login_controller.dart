import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:workout_fitness_app/view_model/addFormFieldModel.dart';

class LoginController extends GetxService {
var Addloginfields=<AddFormFieldModel>[].obs;
@override
  void onInit() {
    
    super.onInit();
    Addloginfields.addAll([
      AddFormFieldModel(
        label: "Login With Email", 
        controller: TextEditingController(),
        keyboardType:TextInputType.emailAddress,
        focusNode: FocusNode()
       ) ,
         AddFormFieldModel(
        label: "Login With Email", 
        controller: TextEditingController(),
        keyboardType:TextInputType.emailAddress,
        focusNode: FocusNode()
       ),
         AddFormFieldModel(
        label: "Login With Email", 
        controller: TextEditingController(),
        keyboardType:TextInputType.emailAddress,
        focusNode: FocusNode()
       ),
         AddFormFieldModel(
        label: "Login With Email", 
        controller: TextEditingController(),
        keyboardType:TextInputType.emailAddress,
        focusNode: FocusNode()
       ),
         AddFormFieldModel(
        label: "Login With Email", 
        controller: TextEditingController(),
        keyboardType:TextInputType.emailAddress,
        focusNode: FocusNode()
       )
       
       ]);
  }
}