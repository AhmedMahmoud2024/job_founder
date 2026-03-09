import 'package:flutter/material.dart';
import 'package:job_founder/core/theme/colors.dart';
import 'package:job_founder/core/theme/styles.dart';

class FeaturedJobsText extends StatelessWidget {
  const FeaturedJobsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Featured Jobs',
          style: Styles.popiansSemiBold14
              .copyWith(color: AppColors.primaryColor),
        ),
        Text(
          'See All',
          style: Styles.popiansRegular15.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
