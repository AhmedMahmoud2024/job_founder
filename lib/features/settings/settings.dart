import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_founder/core/helper/lists.dart';
import 'package:job_founder/core/theme/styles.dart';
import 'package:job_founder/features/search/search.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

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
        title: Text('Settings',style: Styles.popiansSemiBold14.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w600
        ),),
    ),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 89.w,
          height: 25.h,
          decoration: BoxDecoration(
            color:Colors.white
          ),
          child: Align(
            
            alignment: AlignmentGeometry.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));
                },
                child: Text('Applications',style: Styles.popiansSemiBold14.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w600
                ),),
              ),
            ),
          ),
        ),
        SizedBox(height: 15.h,),
        SizedBox(
              height: 280.h,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: AppLists.titleSettings.length,
                itemBuilder: (context,index){
                  return ListTile(
               title: Text(AppLists.titleSettings[index],style: Styles.popiansMedium14Gray,),
               leading: Image.asset(AppLists.leadingSettings[index],width: 16.w,height: 21.h,),
                  );
              
                }
     )
     ) 
    ,
         Container(
          width: 89.w,
          height: 18.h,
          decoration: BoxDecoration(
            color:Colors.white
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                'About',style: Styles.popiansSemiBold14.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                
              ),),
            ),
          ),
        ),
        SizedBox(
              height: 280.h,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: AppLists.titleAbout.length,
                itemBuilder: (context,index){
                  return ListTile(
               title: Text(AppLists.titleAbout[index],style: Styles.popiansMedium14Gray,),
               leading: Image.asset(AppLists.leadingAbout[index],width: 16.w,height: 21.h,),
                  );
              
                }
     )
     ) 
    
     ],

     
    ),
    );
  }
}



