import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_founder/core/theme/colors.dart';
import 'package:job_founder/core/theme/styles.dart';

/// Requirement item with checkmark
class RequirementItem extends StatelessWidget {
  final String requirement;

  const RequirementItem({
    Key? key,
    required this.requirement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _CheckmarkIcon(),
          SizedBox(width: 12.w),
          Expanded(
            child: Text(
              requirement,
              style: Styles.popiansMedium14Gray.copyWith(
                color: Colors.grey[700],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Checkmark icon for requirements
class _CheckmarkIcon extends StatelessWidget {
  const _CheckmarkIcon();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24.w,
      height: 24.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.primaryColor,
      ),
      child: Icon(
        Icons.check,
        color: Colors.white,
        size: 14.sp,
      ),
    );
  }
}
