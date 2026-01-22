import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_founder/core/theme/styles.dart';

/// Benefit item with icon and text
class BenefitItem extends StatelessWidget {
  final String icon;
  final String benefit;

  const BenefitItem({
    Key? key,
    required this.icon,
    required this.benefit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Row(
        children: [
          Text(
            icon,
            style: TextStyle(fontSize: 20.sp),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Text(
              benefit,
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
