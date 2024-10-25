import 'package:flutter/material.dart';

class AddFormFieldModel {
  String label;
  TextEditingController controller;
  FocusNode? focusNode;
  IconData? icon;
  TextInputType keyboardType;

  AddFormFieldModel({
    required this.label,
    required this.controller,
    this.focusNode,
    this.icon,
    this.keyboardType = TextInputType.text,
  });
}