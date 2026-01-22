import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_founder/core/theme/colors.dart';
import 'package:job_founder/core/theme/styles.dart';

import '../constants/search_constants.dart';

/// Job title card at the top of search result
class JobTitleCard extends StatelessWidget {
  final String jobTitle;

  const JobTitleCard({
    Key? key,
    required this.jobTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: AppColors.secondaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            jobTitle,
            style: Styles.popiansBold22.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              _JobTypeTag(label: SearchConstants.jobType),
              SizedBox(width: 8.w),
              _JobTypeTag(label: SearchConstants.jobLocation),
            ],
          ),
        ],
      ),
    );
  }
}

/// Reusable tag for job type/location
class _JobTypeTag extends StatelessWidget {
  final String label;

  const _JobTypeTag({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.w,
        vertical: 6.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: Colors.white,
      ),
      child: Text(
        label,
        style: Styles.popiansMedium14Gray.copyWith(
          color: AppColors.primaryColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
