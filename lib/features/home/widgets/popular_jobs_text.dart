import 'package:flutter/material.dart';
import 'package:job_founder/core/theme/colors.dart';
import 'package:job_founder/core/theme/styles.dart';

class PopularJobsText extends StatelessWidget {
  const PopularJobsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Popular Jobs',
          style: Styles.popiansSemiBold14
              .copyWith(color: AppColors.primaryColor),
        ),
        Text(
          'See All',
          style: Styles.popiansRegular15
              .copyWith(fontWeight: FontWeight.w500, color: Colors.grey),
        ),
      ],
    );
  }
}
