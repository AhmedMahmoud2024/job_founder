import 'package:flutter/material.dart';
import 'package:job_founder/core/helper/images.dart';
import 'package:job_founder/core/theme/colors.dart';

import '../../core/theme/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white.withOpacity(0.09),
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top:28,left: 24,right: 28),
          child: Column(
            children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text('Welcome to Jobseek!',style:Styles.popiansMedium14Gray),
                   Text('Discover Jobs ',style:Styles.popiansBold22.copyWith(color: AppColors.primaryColor)),
                ]
              )
    ,         Stack(
                children: [
                  
                   CircleAvatar(
                      radius: 30,
                      child:Image.asset(Images.personImage) ,
                    ),
                  
                  Positioned(
                    right: 0,
                    child: CircleAvatar(
                      radius: 10,
                      child: CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.red,
                      ),
                    ),
                  ),
                
                ],
              )
            ]
          )
            ]
          ),
        ),
      )
    );
  }
}