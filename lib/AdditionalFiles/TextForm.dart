// ignore_for_file: file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:medx/AdditionalFiles/constants.dart';

class TextForm extends StatelessWidget {
  const TextForm({
    super.key,
    required this.hintText,
    required this.controller,
    this.validator,
  });

  final String hintText;
  final controller;
  final validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      cursorColor: Colors.black38,
      controller: controller,
      keyboardType: TextInputType.name,
      style: const TextStyle(
        fontSize: 16,
        color: Color(0xFF4E54C8),
        fontWeight: FontWeight.bold,
      ),
      onChanged: (value) {
        controller.text = value;
      },
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextFormTextStyle,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.black38,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFF4E54C8),
          ),
        ),
      ),
    );
  }
}