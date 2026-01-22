import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_founder/core/theme/colors.dart';
import 'package:job_founder/core/theme/styles.dart';

import '../constants/search_constants.dart';

/// Search bar with filter button
class SearchBarWithFilter extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onFilterTap;

  const SearchBarWithFilter({
    Key? key,
    required this.controller,
    required this.onFilterTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Row(
        children: [
          Expanded(
            child: _SearchTextField(controller: controller),
          ),
          SizedBox(width: 12.w),
          _FilterButton(onTap: onFilterTap),
        ],
      ),
    );
  }
}

/// Search text field
class _SearchTextField extends StatelessWidget {
  final TextEditingController controller;

  const _SearchTextField({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: AppColors.secondaryColor,
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: SearchConstants.searchHintText,
          hintStyle: Styles.popiansMedium14Gray.copyWith(
            color: Colors.grey[400],
          ),
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: AppColors.primaryColor,
            size: 24.sp,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 12.h),
        ),
        style: Styles.popiansMedium14Gray.copyWith(
          color: Colors.black,
        ),
      ),
    );
  }
}

/// Filter button
class _FilterButton extends StatelessWidget {
  final VoidCallback onTap;

  const _FilterButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 50.w,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: AppColors.secondaryColor,
        ),
        child: Center(
          child: Icon(
            Icons.tune,
            color: AppColors.primaryColor,
            size: 24.sp,
          ),
        ),
      ),
    );
  }
}
