import 'package:flutter/material.dart';
import 'package:job_founder/core/helper/images.dart';
import 'package:job_founder/core/theme/colors.dart';

import '../../core/theme/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white.withOpacity(0.09),
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top:28,left: 24,right: 28),
          child: SingleChildScrollView(
            child: Column(
              children:[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text('Welcome to Jobseek!',style:Styles.popiansMedium14Gray),
                     Text('Discover Jobs ',style:Styles.popiansBold22.copyWith(color: AppColors.primaryColor)),
                  ]
                )
                ,         Stack(
                  children: [
                    
                     CircleAvatar(
                        radius: 30,
                        child:Image.asset(Images.personImage) ,
                      ),
                    
                    Positioned(
                      right: 0,
                      child: CircleAvatar(
                        radius: 10,
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.red,
                        ),
                      ),
                    ),
                  
                  ],
                )
              ]
            ),
             SizedBox(height: 40,),
             Row(
               children: [
                 SizedBox(
                  width: 270,
                   child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search a job or position',
                      helperStyle: Styles.popiansRegular15.copyWith(color:Colors.grey),
                    filled: true,
                    fillColor: AppColors.secondaryColor,
                    prefixIcon: Icon(Icons.search,color: AppColors.primaryColor,),
                   
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(10)
                      )
                    )
                             ),
                 ),
                 SizedBox(width: 16,),
               Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Icon(Icons.filter_list_alt,color: AppColors.primaryColor,size: 30,),
               )
               ],
             ),
             SizedBox(height: 40,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Featured Jobs',style: Styles.popiansSemiBold14.copyWith(
                  color: AppColors.primaryColor
                )),
                Text('See All',style: Styles.popiansRegular15.copyWith(
                  color: Colors.grey
                )),
              ],
             ),
              SizedBox(height: 20,),
              Row(
                
                children: [
                  Container(
                    width: 156,
                    height: 164,
                    decoration: BoxDecoration(
                      color: AppColors.secondaryColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(24)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(Images.pImage,width: 56,height: 56,),
                      SizedBox(height: 7,),
                        Text('Jr Executive',style: Styles.popiansSemiBold14),
                        SizedBox(height: 7,),
                        Text('Pinterest',style: Styles.popiansRegular15.copyWith(
                          fontSize: 12
                        )),
                          SizedBox(height: 7,),
                        Text('\$96,000/Y',style: Styles.popiansMedium14Gray.copyWith(
                          color: Colors.black
                        )),
                      ],
                    ),
                  )
                ,
                SizedBox(width: 15,),
                 Container(
                    width: 156,
                    height: 164,
                    decoration: BoxDecoration(
                      color: AppColors.secondaryColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(24)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(Images.spotifyImage,width: 40,height: 40,),
                         SizedBox(height: 7,),           
                        Text('Sr Developer',style: Styles.popiansSemiBold14),
                        SizedBox(height: 7,),
                        Text('Spotify',style: Styles.popiansRegular15.copyWith(
                          fontSize: 12
                        )),
                          SizedBox(height: 7,),
                        Text('\$115,000/Y',style: Styles.popiansMedium14Gray.copyWith(
                          color: Colors.black
                        )),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 40,),
                  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Popular Jobs',style: Styles.popiansSemiBold14.copyWith(
                  color: AppColors.primaryColor
                )),
                Text('See All',style: Styles.popiansRegular15.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey
                )),
              ],
             ),
             SizedBox(height: 17,),
             Container(
              width: 400,
              height: 74,
              decoration: BoxDecoration(
                color: AppColors.secondaryColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20)
              ),
              child: ListTile(
                leading: Image.asset(Images.burgerKingImage,width: 45,height: 45,),
                title: Text("Jr Executive",style: Styles.popiansSemiBold14),
            
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
             ),
              SizedBox(height: 20,),
                Container(
              width: 400,
              height: 74,
              decoration: BoxDecoration(
                color: AppColors.secondaryColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20)
              ),
              child: ListTile(
                leading: Image.asset(Images.pImage,width: 41,height: 43,),
                title: Text("Product Maanager",style: Styles.popiansSemiBold14),
            
                subtitle: Text('Beats',style: Styles.popiansRegular15.copyWith(
                  fontSize: 13
                ),),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('\$84,000/Y',style: Styles.popiansSemiBold14.copyWith(fontSize: 12),),
                    Text('Florida, US',style: Styles.popiansRegular15.copyWith(
                      fontSize: 11
                    ),)
                  ],
                ),
              ),
             )
             ]
            ),
          ),

        ),
      )
    );
  }
}