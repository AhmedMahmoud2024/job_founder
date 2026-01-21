import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dashed_rect/dashed_rect.dart';

import '../../../core/theme/styles.dart';

class DashedBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;
    
    const dashWidth = 10;
    const dashSpace = 5;
    
    // Top border
    double startX = 0;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset((startX + dashWidth).clamp(0, size.width), 0),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
    
    // Bottom border
    startX = 0;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, size.height),
        Offset((startX + dashWidth).clamp(0, size.width), size.height),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
    
    // Left border
    double startY = 0;
    while (startY < size.height) {
      canvas.drawLine(
        Offset(0, startY),
        Offset(0, (startY + dashWidth).clamp(0, size.height)),
        paint,
      );
      startY += dashWidth + dashSpace;
    }
    
    // Right border
    startY = 0;
    while (startY < size.height) {
      canvas.drawLine(
        Offset(size.width, startY),
        Offset(size.width, (startY + dashWidth).clamp(0, size.height)),
        paint,
      );
      startY += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class ResumePortfolioUploaded extends StatelessWidget {
  const ResumePortfolioUploaded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Resume & Portfolio',style: Styles.popiansSemiBold14.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w600
        ),),
          actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Text('Edit',style: TextStyle(color: Color(0xFF1F41BB),fontSize: 13,fontWeight: FontWeight.w600),),
          )
        ],
      ),
      body:  ListView(
        children: [
          Column(
          children: [
            Container(
              width: 327.w,
              height: 360.h,
              padding: EdgeInsets.only(top:8.h,left: 24.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child:Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      
                      child: Text('Resume or CV',style: Styles.popiansSemiBold14.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                      
                      ),
                    ),
                  ),
              
              Container(
            width: 340.w,
            height: 300.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: CustomPaint(
              painter: DashedBorderPainter(),
              child: Container(
                width: 340.w,
                height: 300.h,
                decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: Colors.white,
                ),
                child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Container(
                width: 210.w,
                height: 42.h,
              
                child: Center(child: Text('Upload your CV or Resume and \n use it when you apply for jobs'))),
            ),
               
              Padding(
              padding:  EdgeInsets.only(top: 20.0,left: 20.0,bottom: 10.0),
              child: Container(
                width: 210.w,
                height: 70.h,
               decoration: BoxDecoration(
                color: Color(0xFFF2F2F3)
               ),
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                  Container(
                    width: 33.w,
                    height: 41.h,
                    padding: EdgeInsets.only(top: 16.h,left: 24.h),
                    child:Image.asset('assets/images/pdfImage.png')), 
                   Column(
                    children: [
                      
                        Text('Rifat_CV_UX Designer',
                        style: Styles.popiansMedium14Gray.copyWith(
                          fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                          color: Color(0xFF0D0D26)
                        )
                        ),
                        SizedBox(height: 8.h,),
                         Text('287 KB',
                        style: Styles.popiansRegular15.copyWith(
                          fontSize: 11.sp,
                              fontWeight: FontWeight.w400,
                          color: Color(0xFF95969D)
                        )
                        ),
                    ],
          
                   ),
          
                 ],
          
                 
                )
              ),
            ),
           
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                width: 184.w,
                height: 56.h,
               
                decoration: BoxDecoration(
                  color: Color(0xFF1F41BB),
                  borderRadius: BorderRadius.circular(5.r)
                ),
                   
               child: Center(
                 child: Text('Add More',
                 style: Styles.popiansMedium14Gray.copyWith(
                  fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                  color: Color(0xFFFFFFFF)
                 ),
                           ),
               ),
              ),
            ) 
          ],
          
          
                ),
              ),
            ),
          )
          
            /*
                               DashedRect(
            color: Color(0xFF1F41BB),
            strokeWidth: 2,
            child: Container(
              width: 327.w,
              height: 315.h,
              child: Center(child: Text('Dashed Border')),
            ),
          )
          */
                ],
              ) ,
            )
          ,Padding(
          
            padding: const EdgeInsets.only(left: 24,top:15,right: 20),
            child: Container(
            width: 327.w,
            height: 144.h,
            decoration: BoxDecoration(
              color: Colors.white
            ),
            child: ListView(
              children: [
                Column(
                  children: [
                     Align(
                      alignment: Alignment.topLeft,
                       child: Padding(padding:  EdgeInsets.only(top: 5,bottom: 10),
                             child: Text('Portfolio (Optional)', style: Styles.popiansSemiBold14.copyWith(fontSize: 16.sp),),
                             ),
                     ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          portfolioItem('Portfolio Link'),
                          SizedBox(width: 15,),
                          portfolioItem( 'Add Slide' )
                        ],
                      ),
                      SizedBox(height: 8.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          portfolioItem('Add PDF'),
                          
                          SizedBox(width: 15,),
                          portfolioItem( 'Add Photos ' )
                        ],
                      ),
                  ],
                ),
              ],
            ),
            ),
          )
           ,Padding(
             padding: const EdgeInsets.only(top: 10.0,right: 48,bottom: 5,left: 48),
             child: Container(
              width: 327.w,
              height: 56.h,
              decoration: BoxDecoration(
                color: Color(0xFF1F41BB),
                borderRadius: BorderRadius.circular(5.r)
              ),
              child: Center(
                child: Text('Save',style: Styles.popiansMedium14Gray.copyWith(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500
                ),),
              ),
             ),
           )
          ],
          ),
        ],
      ),
    );
  }
}

Widget portfolioItem(String title){
return Container(
   width: 155.w,
   height: 44.h,
   decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10.r),
    color:Colors.white, 
 border: BoxBorder.all(
  color: Colors.black
 )
   ),
   
   child: Center(
    child: Text(
      title
    ),
   ),
);
}