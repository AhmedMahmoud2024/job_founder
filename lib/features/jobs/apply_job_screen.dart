import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_founder/core/helper/images.dart';
import 'package:job_founder/core/theme/colors.dart';
import 'package:job_founder/core/theme/styles.dart';
import 'package:job_founder/features/apply%20success/apply_scucess.dart';
import 'package:job_founder/features/home/home_screen.dart';

class ApplyJobScreen extends StatefulWidget {
  const ApplyJobScreen({super.key});

  @override
  State<ApplyJobScreen> createState() => _ApplyJobScreenState();
}

class _ApplyJobScreenState extends State<ApplyJobScreen> {
File? uploadPdf;
Future<void>  uploadResume() async{
FilePickerResult? result=await FilePicker.platform.pickFiles(
type: FileType.custom,
allowedExtensions: ['pdf']
);
if(result!=null){
  setState(() {
    uploadPdf=File(result.files.single.path!);
  });
}
ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  backgroundColor: Colors.green,
  content: Text('Files Uploaded Successfully')));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor: Colors.white,
   appBar: AppBar(
    backgroundColor: Colors.white,
    leading: Icon(Icons.arrow_back_ios_new),
    title: Text('Apply',style: Styles.popiansSemiBold14.copyWith(
      fontSize:16.sp
    ),),
   ),
   body: SingleChildScrollView(
     child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      FirstPopularContainer(
        radius: 1.r,
      ),
      SizedBox(height: 24.h,),
      Padding(
        padding: const EdgeInsets.only(left:24.0),
        child: Text('Select a profile',style: Styles.popiansSemiBold14.copyWith(fontSize: 16.sp),),
      ),
      SizedBox(height: 16.h,),
      
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container( //first row element conntainer
            width: 155.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r)
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(       
                children: [
                  Align(
                    heightFactor: 0.4,
                    alignment: Alignment.topCenter,
                    child: Icon(Icons.radio_button_off_outlined,color: Colors.grey.shade300,),
                  ),
                  SizedBox(height: 5.h,),
                  Image.asset(Images.resumePerson,width: 72.w,height: 72.h,),
                    SizedBox(height: 5.h,),
                  Text('jennefer catlen',style: Styles.popiansSemiBold14.copyWith(fontSize: 15.sp),),
                     SizedBox(height: 5.h,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text('Ux Designer',style: Styles.popiansRegular15.copyWith(fontSize: 10.sp),),
                         SizedBox(width: 5.h,),
                         Image.asset(Images.verifyIcon,width: 9.w,height: 9.h,)
                       ],
                     ),
         
                
                   
       
                     Padding(padding: const EdgeInsets.only(left: 24.0,top: 32,bottom: 29),
                     child: Text('Select a resume',style: Styles.popiansSemiBold14.copyWith(fontSize: 16),),
                     ),
                     Row(
                      children: [
                        Container(
                          width: 155.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.r)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.check_circle),
     
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 65,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius: BorderRadius.circular(6.r)
                                    ),
                                    child: Center(child: Text('Ux Designer',style: Styles.popiansMedium14Gray.copyWith(color: Colors.white,fontSize: 8,fontWeight: FontWeight.w700),)),
                                  ),
                                  Text('jennefer catlen',style: Styles.popiansSemiBold14.copyWith(fontSize: 11),)
                                ],
                              )
                            ],
                          ),
                        )
                     ,
                      Container(
                          width: 155.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.r)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.radio_button_off_outlined),
     
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 65,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius: BorderRadius.circular(6.r)
                                    ),
                                    child: Center(child: Text('Ux Designer',style: Styles.popiansMedium14Gray.copyWith(color: Colors.white,fontSize: 8,fontWeight: FontWeight.w700),)),
                                  ),
                                  Text('jennefer catlen',style: Styles.popiansSemiBold14.copyWith(fontSize: 11),)
                                ],
                              )
                            ],
                          ),
                        )
                     /*
                     Row(
                      children: [
                        Container(
                          width: 155.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.r)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.radio_button_off_outlined),
     
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(3),
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius: BorderRadius.circular(6.r)
                                    ),
                                    child: Center(child: Text('Product Manager',style: Styles.popiansMedium14Gray.copyWith(color: Colors.red,
                                    fontSize: 8,fontWeight: FontWeight.w700),)),
                                  ),
                                  Text('jennefer catlen',style: Styles.popiansSemiBold14.copyWith(fontSize: 11),)
                                ],
                              )
                            ],
                          ),
                          
                        )
                        
                      ],
                     ),
                     */
                    
                      ],
               
                     )
               ,
                   
                     Padding(padding: const EdgeInsets.only(left: 24.0,top: 40,bottom: 16),
                     child: Text('Cover Later (Optional)', style: Styles.popiansSemiBold14.copyWith(fontSize: 16.sp),),
                     ),
     
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 270.w,
                  child: TextField(
                    maxLines: 3,
                    decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                 hintText: 'Write a cover letter',
                 hintStyle: Styles.popiansRegular15.copyWith(fontSize: 13.sp),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white
                        )
                        ,
                        borderRadius: BorderRadius.circular(12.sp)
                      ),
                       border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white
                        )
     ,
                        borderRadius: BorderRadius.circular(12.sp)
                      ),
                       focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white
                        ),
                        borderRadius: BorderRadius.circular(12.sp)
                      )
                    ),
                    
                  ),
                        ),
                        GestureDetector(
                          onTap: () async{
                            await uploadResume();
                          },
                          child: Container(
                            width: 68.w,
                            height: 90.h,
                            decoration: BoxDecoration(
                              color: Colors.white
                            ),
                            child:uploadPdf!=null?Center(child: Text('File Uploaded',
                            style: Styles.medium16.copyWith(fontSize: 10.sp,
                            color: Colors.green),
                            textAlign: TextAlign.center,
                            )
                            ,)
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(Images.uploadPdf,width: 25.w,height: 25.h,),
                                Text('Upload Resume ',style: Styles.medium16.copyWith(
                                  fontSize: 10.sp
                                ),
                                textAlign: TextAlign.center,)
                              ],
                            ),
                          ),
                        )
                      ],
                     ),
                     SizedBox(height: 32.h,),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                      minimumSize: Size(327.w, 58.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.r)
                      )
                    ),
                    onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ApplySuccess()));        
                  }, child: Text('Apply ',style: Styles.medium16.copyWith(
                    color: Colors.white
                  ),)
                  ),
                ),
                SizedBox(height: 32.h,)
                ],
              ),
            ),
          ),
       
       SizedBox(width: 10.w,),
           Container(
            width: 155.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r)
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(       
                children: [
                  Align(
                    heightFactor: 0.4,
                    alignment: Alignment.topCenter,
                    child: Icon(Icons.check_circle,color: Colors.grey.shade300,),
                  ),
                  SizedBox(height: 5.h,),
                  Image.asset(Images.resumePerson,width: 72.w,height: 72.h,),
                    SizedBox(height: 5.h,),
                  Text('jennefer catlen',style: Styles.popiansSemiBold14.copyWith(fontSize: 15.sp),),
                     SizedBox(height: 5.h,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text('Product Manager',style: Styles.popiansRegular15.copyWith(fontSize: 10.sp),),
                         SizedBox(width: 5.h,),
                         Image.asset(Images.verifyIcon,width: 9.w,height: 9.h,)
                       ],
      
                     ),
                ],
              ),
            ),
          )
        ],
      )
      ],
     ),
   ),
    );
  }
}