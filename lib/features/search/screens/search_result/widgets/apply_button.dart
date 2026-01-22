import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_founder/core/theme/colors.dart';
import 'package:job_founder/core/theme/styles.dart';
import 'package:job_founder/features/search/constants/search_constants.dart';



/// Apply button
class ApplyButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ApplyButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        child: Text(
          SearchConstants.applyNowButtonText,
          style: Styles.popiansSemiBold14.copyWith(
            color: Colors.white,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
