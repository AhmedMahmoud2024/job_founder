
import 'package:flutter/material.dart';

import '../../../core/helper/strings.dart';
import '../../../core/theme/colors.dart';

class OnBoardingTitle extends StatelessWidget {
  const OnBoardingTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     width: 250,
     child: Text(
       Strings.onBoardingTitle,
       textAlign: TextAlign.center,
       style: TextStyle(
         fontSize: 30,fontWeight: FontWeight.bold,
         color: AppColors.primaryColor
         )
     ),
            );
  }
}