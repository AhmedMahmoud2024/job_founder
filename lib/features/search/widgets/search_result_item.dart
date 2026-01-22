import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_founder/core/theme/colors.dart';
import 'package:job_founder/core/theme/styles.dart';

import '../constants/search_constants.dart';

/// Individual search result item
class SearchResultItem extends StatelessWidget {
  final String jobTitle;
  final VoidCallback onTap;

  const SearchResultItem({
    Key? key,
    required this.jobTitle,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 12.h),
        padding: EdgeInsets.all(16.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: AppColors.secondaryColor,
            width: 1.w,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    jobTitle,
                    style: Styles.popiansSemiBold14.copyWith(
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    SearchConstants.tapToViewDetailsText,
                    style: Styles.popiansMedium14Gray.copyWith(
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: AppColors.primaryColor,
              size: 18.sp,
            ),
          ],
        ),
      ),
    );
  }
}
