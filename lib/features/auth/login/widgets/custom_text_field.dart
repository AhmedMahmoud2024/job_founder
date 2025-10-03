import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.hintText,
  });

final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
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