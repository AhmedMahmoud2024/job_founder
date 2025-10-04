import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    super.key, required this.MaterialButtonText, required this.onPressed,
  });
  final VoidCallback onPressed;
final String MaterialButtonText ;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: onPressed,
    color:AppColors.primaryColor,
    minWidth: 323,
    height:60,
    elevation:7,
    textColor: Colors.white,
    shape:RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10)
    ),
    child:Text(MaterialButtonText,style:Styles.popiansSemiBold14.copyWith(fontSize: 20))
    );
  }
}