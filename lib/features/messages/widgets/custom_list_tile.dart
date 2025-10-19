
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_founder/core/theme/colors.dart';
import 'package:job_founder/core/theme/styles.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.leading,
    required this.title,
    required this.subTitle,
    required this.isRead,
    required this.numOfMessages,
     required this.index,
  });

  final List<String> leading;
  final List<String> title;
  final List<String> subTitle;
  final List<bool> isRead;
  final List<String> numOfMessages;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
                                 contentPadding: REdgeInsets.symmetric(vertical: 10.h),
      leading: Image.asset(leading[index],width: 40.w,height: 40.h,),
                                     title: Text(title[index],style: Styles.medium16.copyWith(fontSize: 15.sp),), 
                               subtitle: Text(subTitle[index],style: Styles.popiansRegular15.copyWith(
                                 fontSize: 14.sp,
                               color:isRead[index]==true? Colors.grey : Colors.black
                               ),
                               
                               ),
                          trailing: Column(
                           crossAxisAlignment: CrossAxisAlignment.end,
                           children: [
                             Text('11.45 am',style: Styles.popiansSemiBold14.copyWith(
                               fontSize: 11.sp,
                              color:isRead[index]==true? Colors.grey : Colors.black
                             ),),
                          isRead[index]==true? SizedBox() :  Container(
                             width: 24.w,
                             height: 15.w,
                             decoration: BoxDecoration(
                               color: AppColors.primaryColor,
                               borderRadius: BorderRadius.circular(8.r)
                             ),
                             child: Center(
                               child: Text(numOfMessages[index],style: Styles.popiansMedium14Gray.copyWith(
                                 color: Colors.white,
                                 fontSize: 10.sp
                               ),),
                             ),
                           )
                           ],
                          ),
    );
  }
}