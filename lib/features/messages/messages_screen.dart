import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_founder/features/messages/widgets/custom_list_tile.dart';

import '../../core/helper/images.dart';
import '../../core/theme/colors.dart';
import '../../core/theme/styles.dart';

class MessagesScreen extends StatelessWidget {
   MessagesScreen({super.key});

final  List<String> title=[
  'Google',
  'HP',
  'Spotify'
];


final  List<String> subTitle=[
  'Are You available for an interview....',
  'We are looking forward to takin.....',
  'Are you available for an interview....'
];


final  List<String> leading=[
Images.googleImage,
  Images.hpImage,
  Images.spotifyImage
];

final  List<String> numOfMessages=[
'4',
  '2',
  '5'
];
final List<bool> isRead=[
  false,
  false,
  true
];

final  List<String> persons=[
  'Wellogle',
  'john',
  'smeth'
];

final  List<String> subTitlePersons=[
  'Are You available for an interview....',
  'We are looking forward to takin.....',
  'Are you available for an interview....'
];
final  List<String> leadingPersons=[
Images.person1Image,
  Images.person2Image,
  Images.person3Image
];

final  List<String> numOfMessagesPersons=[
'4',
  '2',
  '5'
];
final List<bool> isReadPerson=[
  false,
  false,
  true
];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        title: Text('Messages'),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(Icons.search,),
            onPressed: () {
              // Action for search button
            },
          ),
          SizedBox(width: 20),
          IconButton(
            icon: Icon(Icons.edit_attributes_rounded),
            onPressed: () {
              // Action for search button
            },
          ),
        ],
      ),
      body:  Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            
            children: [
               TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 13),
                          hintText: 'Search a chat or message',
                          helperStyle: Styles.popiansRegular15.copyWith(color:Colors.grey),
                        filled: true,
                        fillColor: AppColors.secondaryColor,
                        prefixIcon: Icon(Icons.search,color: AppColors.primaryColor,),
                       
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(12)
                          )
                        )
                                 ),
                                 SizedBox(height: 24.h,),
                                 Text('Companies',style: Styles.popiansSemiBold14,),
                                 SizedBox(
                                  height: (title.length)*100.h,
                                   child: ListView.builder(
                                     physics: NeverScrollableScrollPhysics(),
                                     padding: EdgeInsets.symmetric(vertical: 10.h),
                                     itemCount: title.length,
                                     itemBuilder: (context,index){
                                           
                                    return CustomListTile(leading: leading, title: title, subTitle: subTitle, isRead: isRead, numOfMessages: numOfMessages, index: index);
                                   }),
                                 ),
                                Text('Individual Messages',style: Styles.popiansSemiBold14,),
                                   SizedBox(
                                 height: (persons.length)*100.h,
                                     child: ListView.builder(
                                                                           physics: NeverScrollableScrollPhysics(),
                                                                           padding: EdgeInsets.symmetric(vertical: 10.h),
                                                                           itemCount: persons.length,
                                                                           itemBuilder: (context,index){
                                                                                    
                                                                           return CustomListTile(leading: leadingPersons, title: persons, subTitle: subTitlePersons, isRead: isRead, numOfMessages: numOfMessagesPersons, index: index);
                                                                          }),
                                   ),
            ],
          ),
        ),
      )
      );
  }
}
