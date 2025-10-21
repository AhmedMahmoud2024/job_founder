import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_founder/core/helper/images.dart';
import 'package:job_founder/core/theme/colors.dart';
import 'package:job_founder/core/theme/styles.dart';
import 'package:job_founder/core/widgets/stacked_avatar.dart';
import 'package:job_founder/features/jobs/job_details_screen.dart';
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
      backgroundColor: Color(0xffF4F4FF),
      appBar: AppBar(
        backgroundColor: Color(0xffF4F4FF),
        surfaceTintColor: Color(0xffF4F4FF),
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
        padding: const EdgeInsets.only(left:24.0),
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
                    disabledColor: Color(0xffF4F4FF),
                    selectedColor: AppColors.primaryColor,
                    backgroundColor: Color(0xffF4F4FF),
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
            ),
            SizedBox(height: 16.h,),
            Expanded(child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context,index){
              return GestureDetector(
                onTap: () {
                  Navigator.of(context,rootNavigator:true).push(MaterialPageRoute(builder: (cotext)=>JobDetailsScreen()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  margin: EdgeInsets.only(right: 24,top: 20),
                  width: 327.w,
                  height: 140.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.r)
                  ),
                  child:  Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                      leading: Image.asset(Images.burgerKingImage,width: 45,height: 45,),
                      title: Text("Product Manager",style: Styles.popiansSemiBold14),
                                  
                      subtitle: Text('Burger King',style: Styles.popiansRegular15.copyWith(
                        fontSize: 13
                      ),),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('\$96,000/Y',style: Styles.popiansSemiBold14.copyWith(fontSize: 12),),
                          Text('Los Angeles, US',style: Styles.popiansRegular15.copyWith(
                            fontSize: 11
                          ),)
                        ],
                      ),
                                    ),
                                    SizedBox(height: 11.h,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 114.w,
                            height: 33.h,
                            decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.2),
                             borderRadius: BorderRadius.circular(52.r)
                            ),
                            child: Center(child: Text('Closed',style: Styles.popiansMedium14Gray.copyWith(
                              color: Colors.black
                            ),)
                            ),
                          ),
                          Text('Full-Time',style: Styles.popiansMedium14Gray.copyWith(
                            color: Colors.black,
                            fontSize: 12.sp
                          ),)
                        ],
                       )
                    ],
                  ),
                ),
              );
            }))
          ],
        ),
      ),
    );
  }
}

/*
  

*/