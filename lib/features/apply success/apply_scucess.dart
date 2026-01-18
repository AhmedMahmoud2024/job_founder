import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/helper/images.dart';
import '../../core/theme/styles.dart';
class ApplySuccess extends StatelessWidget {
  const ApplySuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor: Colors.white,
   body: SingleChildScrollView(
     child: Padding(
       padding:  EdgeInsets.only(top:135,left:61,right: 61),
       child: Column(
        children: [
          Container(
            width: 254.sp,
            height: 254.sp,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Images.done),
              fit: BoxFit.contain
                )
            ),
          ),
          Text(
            'Successful',
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
            fontStyle: Styles.popiansSemiBold14.fontStyle,
            ),
              textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.h,),
          Container(
          width: 269.sp,
          height: 55.h,
          padding: EdgeInsets.only(left:47.w),
          child: Text(
            'You’ve successfully applied to Spotify UX Intern role.',
            style: Styles.popiansRegular15.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xFF7C7C7C),
            ),
          ),
          ),
         SizedBox(height: 44.h,),
          Padding(
            padding: const EdgeInsets.only(left: 24.0,),
            child: Container(
               color: Colors.white,
              child: MaterialButton(
                onPressed: (){},
                color: Colors.white,
                minWidth: 327.w,
                height: 56.h,
                shape: RoundedRectangleBorder(
                 
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top:10.0,right: 48,bottom: 16,left: 48),
                  child: Text(
                    'Browse Jobs',
                    style: Styles.popiansSemiBold14.copyWith(
                      fontSize: 16.sp,
                      color: Color(0xFF1F41BB),
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
       ),
     ),
   ),
    );
  }
}