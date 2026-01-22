import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_founder/core/theme/colors.dart';
import 'package:job_founder/core/theme/styles.dart';

import '../constants/search_constants.dart';

/// Section title widget
class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Styles.popiansBold22.copyWith(
        color: Colors.black,
        fontSize: 18.sp,
      ),
    );
  }
}

/// Company information card
class CompanyInfoCard extends StatelessWidget {
  const CompanyInfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: AppColors.secondaryColor,
          width: 1.w,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            SearchConstants.companyName,
            style: Styles.popiansSemiBold14.copyWith(
              color: Colors.black,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            SearchConstants.companyIndustry,
            style: Styles.popiansMedium14Gray.copyWith(
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }
}

/// Job description text
class JobDescriptionText extends StatelessWidget {
  const JobDescriptionText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      SearchConstants.jobDescription,
      style: Styles.popiansMedium14Gray.copyWith(
        color: Colors.grey[700],
        height: 1.6,
      ),
    );
  }
}
