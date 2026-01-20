import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/helper/images.dart';
import '../../core/theme/styles.dart';

class ProfileStyle extends StatelessWidget {
  const ProfileStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.white,
      appBar: AppBar(
        
        backgroundColor: Colors.white,
        leading: IconButton(
        icon: Icon(Icons.arrow_back_ios,color:Colors.black),
        onPressed: () => Navigator.of(context).pop, 
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Text('Edit',style: TextStyle(color: Color(0xFFAFB0B6),fontSize: 14,fontWeight: FontWeight.w400),),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 49.0),
          child: Container(
            width: 278.w,
            height: 250.h,
            decoration: BoxDecoration(
              color: Colors.white
              
            ),
            child: Column(
              children: [
                
                   Image.asset(Images.resumePerson1,width: 104.w,height: 104.h,
                   
                   ),
          Text("Haley Jessica",style: Styles.popiansSemiBold14,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('Ux Designer',style: Styles.popiansRegular15.copyWith(fontSize: 10.sp),),
                   SizedBox(width: 5.h,),
                   Image.asset(Images.verifyIcon,width: 9.w,height: 9.h,)
                 ],
            )
            ],
            spacing: 15.h,
            
            
            ),
            
          ),
        ),
        Container(
          width: 278.w,
          height: 60.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              rowContent(27, "Applied"),
              rowContent(19, "Reviewd"),
              rowContent(14, "Interview"),
            ],
          ),
        )
      ],
        )
        ),
    );
  }
}

Widget rowContent(int num,String title){
return Column(
  children: [
   Text(num.toString(),style: Styles.popiansSemiBold14,),
    SizedBox(height: 5.h,),
    Text(title,style: Styles.popiansRegular15.copyWith(fontSize: 12.sp,color: Colors.grey),)
  ],
);
}
