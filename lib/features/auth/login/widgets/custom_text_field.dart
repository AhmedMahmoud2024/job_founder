import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({
    super.key, required this.hintText,this.controller
  });

final String hintText;
final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
       contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        filled: true,
        fillColor: AppColors.secondaryColor,
        hintText: hintText,
        hintStyle: Styles.medium16,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(10)
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white)
        )
      )
    );
  }
}