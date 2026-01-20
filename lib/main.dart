import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_founder/core/di/dependency_injection.dart';

import 'features/onBoarding/on_boarding_screen.dart';

void main() async{
await setUpGetIt();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), //add desgn size
      minTextAdapt:true,  //make text take minimum size 
      splitScreenMode:true, //in case of two app on same screen
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          dividerTheme: const DividerThemeData(
            color: Colors.transparent,
          ),
        ),
        home: const OnBoardingScreen(),
      ),
    );
  }
}


