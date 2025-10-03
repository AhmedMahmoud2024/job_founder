import 'package:flutter/material.dart';
import 'package:job_founder/core/helper/strings.dart';
import 'package:job_founder/core/theme/colors.dart';

import '../../core/helper/images.dart';
import 'widgets/on_boarding_app_bar.dart';
import 'widgets/on_boarding_buttons_row.dart';
import 'widgets/on_boarding_description.dart';
import 'widgets/on_boarding_title.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(child: OnBoardingAppBar(), preferredSize: Size.fromHeight(60)),
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 20),child: SingleChildScrollView(
        child: Column(children: [
          Image.asset(Images.onBoardingImage),
          const SizedBox(height: 20,),
          
           OnBoardingTitle(),
          OnBoardingDescription(),
          const SizedBox(height: 30,),
          OnBoardingButtonsRow()
        ],),
      ),),
    );
  }
}
