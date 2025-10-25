import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_founder/core/di/dependency_injection.dart';
import 'package:job_founder/core/theme/colors.dart';
import 'package:job_founder/features/home/home_screen.dart';
import 'package:job_founder/features/jobs/logic/cubit/jobs_cubit.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import 'messages/messages_screen.dart';
import 'notifications/notifications_screen.dart';
import 'saved_jobs/saved_jobs_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  late PersistentTabController controller;

  @override
  void initState() {
    // TODO: implement initState

    controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    List<PersistentTabConfig> tabs = [
      PersistentTabConfig(
        screen: BlocProvider(
          create: (context) => getIt<JobsCubit>()..getJobs(),
          child: HomeScreen(),
        ),
        item: ItemConfig(
            icon: Icon(
          Icons.home,
          color: controller.index == 0 ? AppColors.primaryColor : Colors.grey,
        )),
      ),
      PersistentTabConfig(
        screen: MessagesScreen(),
        item: ItemConfig(
            icon: Icon(
          Icons.message,
          color: controller.index == 1 ? AppColors.primaryColor : Colors.grey,
        )),
      ),
      PersistentTabConfig(
        screen: SavedJobsScreen(),
        item: ItemConfig(
            icon: Icon(
          Icons.notifications,
          color: controller.index == 2 ? AppColors.primaryColor : Colors.grey,
        )),
      ),
      PersistentTabConfig(
        screen: NotificationsScreen(),
        item: ItemConfig(
            icon: Icon(
          Icons.bookmark,
          color: controller.index == 3 ? AppColors.primaryColor : Colors.grey,
        )),
      ),
    ];
    return PersistentTabView(
      controller: controller,
      tabs: tabs,
      onTabChanged: (value) {
        setState(() {});
      },
      navBarBuilder: (NavBarConfig navBarConfig) => Style10BottomNavBar(
//height:70,
        navBarDecoration: NavBarDecoration(),
        navBarConfig: navBarConfig,
      ),
    );
  }
}
