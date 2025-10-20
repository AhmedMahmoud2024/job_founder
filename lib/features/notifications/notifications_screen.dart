import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_founder/core/helper/images.dart';
import 'package:job_founder/core/theme/colors.dart';
import 'package:job_founder/core/theme/styles.dart';
class NotificationsScreen extends StatelessWidget {
   NotificationsScreen({super.key});

final  List<String> title=[
  'want to take a final interview of you where head of HR will see you!',
  'Macdonald want to contact with you in 24 hoursnwith proper preparation'

];

final  List<String> subTitle=[
  '12 min ago','47 min ago'
];

final  List<String> leading=[
  Images.fiverr,Images.mac
];

final  List<String> span=[
  ' fiverr ',' Macdonald '
];

final List<String>titleApplication=[
  'Your application has been submitted successfully to',
  'review your application, cover letter and protofolio. All the best!'
];

final List<String>subTitleApplication=[
'1 hr ago','3 hrs ago'
];

final List<String>leadingApplication=[
Images.bmw, Images.bookly
];
final List<String>spanApplication=[
' BMW ',' Booking.com '
];
final List<String>afterSpanApplication=[
'you can check the status here ',''
];

final List<String>titleInterview=[
  'Congreatulations!',
  'Congratulations! You passed the firsst round on'
];

final List<String>subTitleInterview=[
'4 hr ago','6 hrs ago'
];

final List<String>leadingInterview=[
Images.pImage, Images.bookly

];
final List<String>spanInterview=[
'Beats ','Behabce '
];
final List<String>afterSpanInterview=[
'liked your resume abd want to take an interview of you.','. Be prepare for next!'
];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,

        title: Text('Notifications',style: Styles.popiansSemiBold14.copyWith(fontSize: 16),),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.w),
        child: Column
        (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h,),
            Text('New activity',style: Styles.popiansSemiBold14,),
            SizedBox(
              height: (title.length)*110.h,
              child: ListView.builder(
                itemCount: title.length,
                itemBuilder: (context,index){
              return ListTile(
                contentPadding: REdgeInsets.symmetric(vertical: 10.h),
       leading:Image.asset(leading[index]) ,
       title: RichText(text: TextSpan(
        children: [
          TextSpan( text: span[index],style: Styles.popiansMedium14Gray.copyWith(
            color: Colors.black
,
fontWeight: FontWeight.w600          ),
),
TextSpan(text: title[index],style: Styles.popiansMedium14Gray)
        ]
       )
       )
       ,
       subtitle: Padding(
         padding: const EdgeInsets.only(top:4.0),
         child: Row(
           children: [
             Text(subTitle[index],style: Styles.popiansSemiBold14.copyWith(
              fontSize: 13.sp
             ),),
             SizedBox(width: 5.w,),
             CircleAvatar(
              radius: 4.r,
              backgroundColor: AppColors.primaryColor,
             )
           ],
         ),
       ),
              );
              }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Applications',style: Styles.popiansSemiBold14,),
              Text('See all',style: Styles.popiansMedium14Gray,)
            ],
            ),
            SizedBox(
              height: (titleApplication.length)*110.h,
              child: ListView.builder(
                itemCount: titleApplication.length,
                itemBuilder: (context,index){
                  return ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: 10.h),
                    leading: Image.asset(leadingApplication[index]) ,
                    title: RichText(text: TextSpan(
                      children: [
           index==0? TextSpan(
                        text: titleApplication[index],
                        style: Styles.popiansMedium14Gray
                      ):           TextSpan(
                        text: spanApplication[index],
                        style: Styles.popiansMedium14Gray.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                 index==0?  TextSpan(
                        text: spanApplication[index],
                        style: Styles.popiansMedium14Gray.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w600
                        ),
                      ):    TextSpan(
                        text: titleApplication[index],
                        style: Styles.popiansMedium14Gray
                      ),
                      TextSpan(
                        text: afterSpanApplication[index],
                        style: Styles.popiansMedium14Gray
                      ),
                    ]
                    ),

                    ),
                    subtitle: Padding(padding: EdgeInsets.only(top: 4.0),
                    child: Row(
                      children: [
                        Text(subTitle[index],style: Styles.popiansMedium14Gray.copyWith(
                          fontSize: 13.sp
                          
                        ),),
                      
                      ],
                    ),
                  )
                  );
                }
                ),
              ),
             
            SizedBox(
              height: (titleInterview.length)*110.h,
              child: ListView.builder(
                
                itemCount: titleInterview.length,
                itemBuilder: (context,index){
                  return ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: 10.h),
                    leading: Image.asset(leadingInterview[index]) ,
                    title: RichText(text: TextSpan(
                      children: [
                    
                   TextSpan(
                        text: titleInterview[index],
                        style: Styles.popiansMedium14Gray
                      ),
                      TextSpan(
                        text: spanInterview[index],
                        style: Styles.popiansMedium14Gray.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      TextSpan(
                        text: afterSpanInterview[index],
                        style: Styles.popiansMedium14Gray
                      ),
                    ]
                    ),

                    ),
                    subtitle: Padding(padding: EdgeInsets.only(top: 4.0),
                    child: Row(
                      children: [
                        Text(subTitleInterview[index],style: Styles.popiansMedium14Gray.copyWith(
                          fontSize: 13.sp
                          
                        ),),
                      
                      ],
                    ),
                  )
                  );
                }
                ),
              ),
          ],
        ),
      ),
    );
  }
}