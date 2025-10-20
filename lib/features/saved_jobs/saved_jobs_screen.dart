import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_founder/core/theme/colors.dart';
import 'package:job_founder/core/theme/styles.dart';
import 'package:job_founder/core/widgets/stacked_avatar.dart';
class SavedJobsScreen extends StatefulWidget {
  const SavedJobsScreen({super.key});

  @override
  State<SavedJobsScreen> createState() => _SavedJobsScreenState();
}

class _SavedJobsScreenState extends State<SavedJobsScreen> {
int selectedIndex=0;
// List<bool> isSelected=[false,false,false,false];
 List filters=['All','Design','Developer','Manager'];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
       leading: Icon(Icons.arrow_back_ios),
       title: Text('Saved',style: Styles.popiansSemiBold14.copyWith(
        fontSize: 14.sp
       ),
       ),
       actions: [
        Padding(
          padding: const EdgeInsets.only(right:10.0),
          child: StackedAvatar(),
        )
       ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:24.0),
        child: Column(
          children: [
            SizedBox(height: 34.h,),
            Text('You Saved 48 Jobs',style: Styles.popiansSemiBold14.copyWith(
              fontSize: 24.sp
            ),),
           SizedBox(height: 38.h,),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(filters.length, (index) {
                return   ChoiceChip(
                    disabledColor: Colors.white,
                    selectedColor: AppColors.primaryColor,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(97.r)
                    ),
                     labelStyle: TextStyle(
                      color: selectedIndex==index? Colors.white :Colors.grey
                     ),
                    label: Text(filters[index]),
                     selected: selectedIndex==index,
                     onSelected: (value) {
                       setState(() {
                         selectedIndex=index;
                       });
                     },
                     showCheckmark: false,);
                                      
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

/*
  

*/