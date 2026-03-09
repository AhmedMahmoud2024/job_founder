import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_founder/core/helper/images.dart';
import 'package:job_founder/core/theme/styles.dart';
import 'package:job_founder/features/profile%20style/profile_style.dart';

class DrowerHeaderOfHome extends StatelessWidget {
  const DrowerHeaderOfHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              heightFactor: 0.3,
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Icon(Icons.close),
              ),
            ),
            Image.asset(
              Images.resumePerson1,
              width: 104.w,
              height: 104.h,
            ),
            Text(
              "Haley Jessica",
              style: Styles.popiansSemiBold14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Ux Designer',
                  style: Styles.popiansRegular15.copyWith(fontSize: 10.sp),
                ),
                SizedBox(width: 5.h),
                Image.asset(
                  Images.verifyIcon,
                  width: 9.w,
                  height: 9.h,
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileStyle(),
                  ),
                );
              },
              child: Text(
                'View Profile',
                style: Styles.popiansMedium14Gray.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
