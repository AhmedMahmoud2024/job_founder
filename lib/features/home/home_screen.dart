import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_founder/core/helper/lists.dart';
import 'package:job_founder/core/theme/styles.dart';
import 'package:job_founder/features/search/search.dart';
import 'widgets/index.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        width: 330.w,
        child: SingleChildScrollView(
          child: Column(children: [
            DrowerHeaderOfHome(),
       //
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchScreen()));
              },
              //
              child: SizedBox(
                height: 500.h,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: AppLists.titleDrawer.length,
                  itemBuilder: (context,index){
                    return ListTile(
                 title: Text(AppLists.titleDrawer[index],style: Styles.popiansMedium14Gray,),
                 leading: Image.asset(AppLists.leadingDrawer[index],width: 16.w,height: 21.h,),
                    );
                  }
                  ),
              ),
            )
          ]),
        ),
      ),
        backgroundColor: Colors.white.withOpacity(0.09),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 28, left: 24, right: 28),
            child: SingleChildScrollView(
              child: Column(children: [
                WelcomeHeader(),
                SizedBox(
                  height: 40,
                ),
                SearchRow(),
                SizedBox(
                  height: 40,
                ),
                FeaturedJobsText(),
                SizedBox(
                  height: 20,
                ),
                FeaturedJobsRow(),
                SizedBox(
                  height: 40,
                ),
                PopularJobsText(),
                SizedBox(
                  height: 17,
                ),
                FirstPopularContainer(),
                SizedBox(height: 20),
                SecondPopularContainer()
              ]),
            ),
          ),
        ));
  }
}

