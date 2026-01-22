import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_founder/core/theme/styles.dart';

import '../constants/search_constants.dart';

/// App bar for search result screen
class SearchResultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onBackPressed;

  const SearchResultAppBar({
    Key? key,
    required this.onBackPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: GestureDetector(
        onTap: onBackPressed,
        child: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 24.sp,
        ),
      ),
      title: Text(
        SearchConstants.jobDetailsTitle,
        style: Styles.popiansBold22.copyWith(color: Colors.black),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
