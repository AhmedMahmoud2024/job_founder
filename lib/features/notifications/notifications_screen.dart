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
  'fiverr ','Macdonald '
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
          crossAxisAlignment: CrossAxisAlignment.end,
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
            )
          ],
        ),
      ),
    );
  }
}