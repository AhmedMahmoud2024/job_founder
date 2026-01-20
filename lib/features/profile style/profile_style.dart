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
        ),
        SizedBox(height: 20.h,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Container(
            width: 327.w,
            height: 135.h,
            decoration: BoxDecoration(
              color: Colors.white
              
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Resume',style: Styles.popiansSemiBold14.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1F41BB)
                      ),),
                      Text('Make a resume',style: Styles.popiansRegular15.copyWith(
                        fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                        color: Color(0xFF1F41BB)
                      ),),
                    ],
                  ),
                  SizedBox(height: 13.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0,right: 10.0,bottom: 2.0,left: 25.0),
                        child: Container(
                          width: 32.w,
                          height: 20.h,
                          decoration: BoxDecoration(
                            color: Color(0xFF1F41BB),
                            borderRadius: BorderRadius.circular(6.r)
                          ),
                          child: Center(
                            child: Text('CV',style: Styles.popiansMedium14Gray.copyWith(
                              fontSize: 8.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w400
                            ),),
                          ),
                        ),
                      ),
                      Text('Haley Jessica',style: Styles.popiansMedium14Gray.copyWith(
                        fontSize: 11.sp,
                            fontWeight: FontWeight.w500,
                        color: Color(0xFF0D0D26)
                      ),),
              
                        Padding(
                        padding: const EdgeInsets.only(top: 2.0,right: 10.0,bottom: 2.0,left: 10.0),
                        child: Container(
                          width: 32.w,
                          height: 20.h,
                          decoration: BoxDecoration(
                            color: Color(0xFF1F41BB),
                            borderRadius: BorderRadius.circular(6.r)
                          ),
                          child: Center(
                            child: Text('PDF',style: Styles.popiansMedium14Gray.copyWith(
                              fontSize: 8.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w400
                            ),),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Text('UX Designer',
                    style: Styles.popiansMedium14Gray.copyWith(
                      fontSize: 8.sp,
                          fontWeight: FontWeight.w400,
                      color: Color(0xFF95969D)
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 94.0),
                    child: Container(
                     width: 279.w,
                     height: 40.5.h,
                     decoration: BoxDecoration(
                      color: Colors.white
                     ),
                    child: Text('Creative UX Designer with 6+ years of experience in optimizing user experience through innovative solutions and dynamic interface designs. Successful in enhancing user engag-ement for well-known brands, providing a compelling user experience to improve brand loyalty and customer retention.',
                    style: Styles.popiansRegular15.copyWith(
                      fontSize: 6.sp,
                          fontWeight: FontWeight.w500,
                      color: Color(0xFF95969D)
                    ),
                  
                    ),
                    
                  )
              ),
              SizedBox(height: 10.h,),
              Padding(
                padding: const EdgeInsets.only(left: 24.0,bottom: 40.0),
                child: Container(
                  width: 326.w,
                  height: 254.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r)
                  ),
                  child:Column(
                 children: [
                     Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Portfolio',style: Styles.popiansSemiBold14.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1F41BB)
                      ),),
                      Text('See all',style: Styles.popiansRegular15.copyWith(
                        fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                        color: Color(0xFF1F41BB)
                      ),),
                 ],    
                  ) ,
                ])
                ),
                
              )
              ],
              ),
            ),
          ),
        ),
        SizedBox(height: 10.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            portfolioContainer(Images.image18),
            portfolioContainer(Images.image13),
            portfolioContainer(Images.image14),
          ],

        ),

        SizedBox(height: 10.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            portfolioContainer(Images.image15),
            portfolioContainer(Images.image16),
            portfolioContainer(Images.image17),
          ],

        ),
        
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

Widget portfolioContainer( String imagePath){
return Container(
 width: 98.w,
 height: 98.h,
 decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(8.r),
  image: DecorationImage(
    image: AssetImage(imagePath),
    fit: BoxFit.cover
  )
 ),
);
}