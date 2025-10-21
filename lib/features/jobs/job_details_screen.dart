import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_founder/core/helper/images.dart';
import 'package:job_founder/core/theme/styles.dart';
import 'package:job_founder/features/jobs/widgets/descriptions_body.dart';

import '../../core/theme/colors.dart';

class JobDetailsScreen extends StatefulWidget {
   JobDetailsScreen({super.key});

  @override
  State<JobDetailsScreen> createState() => _JobDetailsScreenState();
}

class _JobDetailsScreenState extends State<JobDetailsScreen>  with  SingleTickerProviderStateMixin{
 List desc=['Design','Full-Time','Junior'];

late TabController tabController;
@override
  void initState() {
    super.initState();
    tabController=TabController(length: 4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
             children: [
              Container(
                width: double.infinity,
                height:270.h,
                decoration:BoxDecoration(
                  color: Colors.white
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Icon(Icons.arrow_back_ios)
                ),
                 Positioned(
                top: 10,
                right: 10,
                child: Icon(Icons.bookmark_add,color: Colors.grey,)
                ),
                 Positioned(
                right:0 ,// put in center left,right=0
                left: 0,
                top: 25,
                child:Column(
                  children: [
                  Image.asset(Images.pImage,width: 60.w,height: 60.h,),
                  Text('Product Manager',style: Styles.popiansSemiBold14.copyWith(
                    fontSize: 20.sp
                  ),),
                  
                  Text('Beats',style: Styles.popiansRegular15,),
                  SizedBox(height: 10.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(desc.length, (index) {
                      return Container(
                         width: 100.w,
                         height: 30.h,
                         decoration: BoxDecoration(
                          color: AppColors.secondaryColor,
                          borderRadius: BorderRadius.circular(10.r)
                         ),
                         child: Center(child: Text(desc[index],style: Styles.popiansRegular15.copyWith(
                          fontSize: 11.sp
                         ),),),
                      );
                    }),
                  ),
                SizedBox(height: 30.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('\$180.00/year',style: Styles.popiansSemiBold14.copyWith(
                        fontSize: 16.sp
                      ),),
                      Text('Seattle, USA',style: Styles.popiansSemiBold14.copyWith(
                        fontSize: 16.sp
                      ),),
                    ],
                  )
                  ],
                )
                ),
             ],
              ),
             SizedBox(height:30.h),
              TabBar(
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                dividerColor: Colors.transparent,
                controller: tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.grey,
                tabs: [
                Tab(text: 'Description',),
                Tab(text: 'Requirements',),
                 Tab(text: 'About',),
                  Tab(text: 'Reviews',), 
              ]),
              SizedBox(
                width: double.infinity,
                height: 250.h,
                child: TabBarView(
                  controller: tabController,
                  children: [
               DescriptionsBody(),
               Center(child: Text('This is requirements body'),),
               Center(child: Text('This is about body'),),
               Center(child: Text('This is review body'),),
          
                ]),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  minimumSize: Size(327.w, 58.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.r)
                  )
                ),
                onPressed: (){
          
              }, child: Text('Apply now',style: Styles.medium16.copyWith(
                color: Colors.white
              ),))
            ],
          ),
        ),
      ),
    );
  }
}

