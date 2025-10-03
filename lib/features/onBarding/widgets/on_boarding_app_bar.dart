
import 'package:flutter/material.dart';

import '../../../core/helper/strings.dart';
import '../../../core/theme/colors.dart';

class OnBoardingAppBar extends StatelessWidget {
  const OnBoardingAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.info,color: Colors.black,size: 20,),
          
        )
      ],
      centerTitle: false,
      title:  Text(Strings.continueAsAGuest,style: TextStyle(
        color: AppColors.primaryColor
      ),
      ),
      backgroundColor: Colors.white,
      leading: Icon(Icons.arrow_back,color: AppColors.primaryColor,),
    );
  }
}


