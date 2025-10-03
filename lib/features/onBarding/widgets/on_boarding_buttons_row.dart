
import 'package:flutter/material.dart';

import '../../../core/helper/strings.dart';
import '../../../core/theme/colors.dart';

class OnBoardingButtonsRow extends StatelessWidget {
  const OnBoardingButtonsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(130, 30),
            elevation: 4,
            backgroundColor: AppColors.primaryColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
          ),
          onPressed: () {},
          child:const Text(Strings.loginText,style: TextStyle(
            color: Colors.white,fontWeight: FontWeight.bold,
    
          ),),
        ),
        TextButton(
          onPressed: () {},
          child:const Text(Strings.registerText,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.black)),
    
        ),
      ],
    );
  }
}
