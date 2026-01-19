import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_founder/core/helper/images.dart';
import 'package:job_founder/core/theme/colors.dart';
import 'package:job_founder/features/jobs/logic/cubit/jobs_cubit.dart';
import 'package:job_founder/features/jobs/logic/cubit/jobs_state.dart';

import '../../core/theme/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        width: 330.w,
        child: Column(children: [
          DrowerHeaderOfHome(),
          ListView.builder(
            itemCount: 8,
            itemBuilder: (context,index){
              return ListTile(

              );
            }
            )
        ]),
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
                SizedBox(
                  height: 20,
                ),
                ScecondPopularContainer()
              ]),
            ),
          ),
        ));
  }
}

class DrowerHeaderOfHome extends StatelessWidget {
  const DrowerHeaderOfHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child:SingleChildScrollView(
        child: Column(
        children: [
          Align(
            heightFactor:0.3,
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(Icons.close),
            ),
          ),
          Image.asset(Images.resumePerson,width: 104.w,height: 104.h,),
          Text("Haley Jessica",style: Styles.popiansSemiBold14,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('Ux Designer',style: Styles.popiansRegular15.copyWith(fontSize: 10.sp),),
                   SizedBox(width: 5.h,),
                   Image.asset(Images.verifyIcon,width: 9.w,height: 9.h,)
                 ],
               ),
               Text('View Profile',style: Styles.popiansMedium14Gray.copyWith(
                fontWeight: FontWeight.w600
               ),)
        ],
                  ),
      ));
  }
}

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Welcome to Jobseek!', style: Styles.popiansMedium14Gray),
        Text('Discover Jobs ',
            style:
                Styles.popiansBold22.copyWith(color: AppColors.primaryColor)),
      ]),
      GestureDetector(
        onTap: () {
          Scaffold.of(context).openDrawer();
        },
        child: Stack(
          children: [
            CircleAvatar(
              radius: 30,
              child: Image.asset(Images.personImage),
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
        ),
      )
    ]);
  }
}

class SearchRow extends StatelessWidget {
  const SearchRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 270,
          child: TextField(
              decoration: InputDecoration(
                  hintText: 'Search a job or position',
                  helperStyle:
                      Styles.popiansRegular15.copyWith(color: Colors.grey),
                  filled: true,
                  fillColor: AppColors.secondaryColor,
                  prefixIcon: Icon(
                    Icons.search,
                    color: AppColors.primaryColor,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(10)))),
        ),
        SizedBox(
          width: 16,
        ),
        Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.circular(12)),
          child: Icon(
            Icons.filter_list_alt,
            color: AppColors.primaryColor,
            size: 30,
          ),
        )
      ],
    );
  }
}

class FeaturedJobsText extends StatelessWidget {
  const FeaturedJobsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Featured Jobs',
            style: Styles.popiansSemiBold14
                .copyWith(color: AppColors.primaryColor)),
        Text('See All',
            style: Styles.popiansRegular15.copyWith(color: Colors.grey)),
      ],
    );
  }
}

class FeaturedJobsRow extends StatelessWidget {
  const FeaturedJobsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobsCubit, JobsState>(
      builder: (context, state) {
        if(state is Loading){
          return Center(child: CircularProgressIndicator(),);
        }
        final jobs=context.read<JobsCubit>().jobs;
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
           ...List.generate(jobs.length, (index) {
            return  Container(
                width: 156,
                height: 230,
                decoration: BoxDecoration(
                    color: AppColors.secondaryColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(24)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      jobs[index].companyLogo,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: 50,
                          height: 50,
                          child: Center(child: Icon(Icons.image),),
                        );
                      },
                      width: 56,
                      height: 56,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(jobs[index].jobTitle, style: Styles.popiansSemiBold14,textAlign: TextAlign.center,),
                    SizedBox(
                      height: 7,
                    ),
                    Text(jobs[index].companyName,
                        style: Styles.popiansRegular15.copyWith(fontSize: 12)),
                    SizedBox(
                      height: 7,
                    ),
                    Text(jobs[index].id.toString(),
                        style: Styles.popiansMedium14Gray
                            .copyWith(color: Colors.black)),
                  ],
                ),
              );
           })
          ,
       
            ],
          ),
        );
      },
    );
  }
}

class PopularJobsText extends StatelessWidget {
  const PopularJobsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Popular Jobs',
            style: Styles.popiansSemiBold14
                .copyWith(color: AppColors.primaryColor)),
        Text('See All',
            style: Styles.popiansRegular15
                .copyWith(fontWeight: FontWeight.w500, color: Colors.grey)),
      ],
    );
  }
}

class ScecondPopularContainer extends StatelessWidget {
  const ScecondPopularContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 74,
      decoration: BoxDecoration(
          color: AppColors.secondaryColor.withOpacity(0.3),
          borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        leading: Image.asset(
          Images.pImage,
          width: 41,
          height: 43,
        ),
        title: Text("Product Maanager", style: Styles.popiansSemiBold14),
        subtitle: Text(
          'Beats',
          style: Styles.popiansRegular15.copyWith(fontSize: 13),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '\$84,000/Y',
              style: Styles.popiansSemiBold14.copyWith(fontSize: 12),
            ),
            Text(
              'Florida, US',
              style: Styles.popiansRegular15.copyWith(fontSize: 11),
            )
          ],
        ),
      ),
    );
  }
}

class FirstPopularContainer extends StatelessWidget {
  const FirstPopularContainer({
    super.key,
    this.radius,
  });
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 74,
      decoration: BoxDecoration(
          color: AppColors.secondaryColor.withOpacity(0.3),
          borderRadius: BorderRadius.circular(radius ?? 20)),
      child: ListTile(
        leading: Image.asset(
          Images.burgerKingImage,
          width: 45,
          height: 45,
        ),
        title: Text("Jr Executive", style: Styles.popiansSemiBold14),
        subtitle: Text(
          'Burger King',
          style: Styles.popiansRegular15.copyWith(fontSize: 13),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '\$96,000/Y',
              style: Styles.popiansSemiBold14.copyWith(fontSize: 12),
            ),
            Text(
              'Los Angeles, US',
              style: Styles.popiansRegular15.copyWith(fontSize: 11),
            )
          ],
        ),
      ),
    );
  }
}
