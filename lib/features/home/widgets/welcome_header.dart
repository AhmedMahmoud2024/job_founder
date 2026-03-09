import 'package:flutter/material.dart';
import 'package:job_founder/core/helper/images.dart';
import 'package:job_founder/core/theme/colors.dart';
import 'package:job_founder/core/theme/styles.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome to Jobseek!', style: Styles.popiansMedium14Gray),
            Text(
              'Discover Jobs ',
              style:
                  Styles.popiansBold22.copyWith(color: AppColors.primaryColor),
            ),
          ],
        ),
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
      ],
    );
  }
}
