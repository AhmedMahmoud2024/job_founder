import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_founder/core/theme/styles.dart';

class DescriptionsBody extends StatelessWidget {
  const DescriptionsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.w,vertical: 10.h),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
       Text('We are the teams who create all the product of Facebook which is used by billions of peaple around the world. want to build new features and improve existing features ',
       style: Styles.popiansRegular15.copyWith(
         fontSize: 12.sp,
         color: Colors.grey
              
       ),),
       SizedBox(height: 10.h,),
       Text('Responsibilities:',style: Styles.popiansRegular15,),
       SizedBox(height: 10.h,),
       SizedBox(
         width: 350.w,
         height: 50.h,
         child: Text(
           '''Full stack web/mobile application development with a variety of coding languages create consumer products and features '''
         ,
         style:Styles.popiansRegular15.copyWith(
           fontSize: 12.sp,
           color: Colors.grey
         ) ,
         textAlign: TextAlign.left,
         ),
       )
              
       ],),
    );
  }
}