import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_founder/core/theme/styles.dart';

/// App bar for search screen
class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Icon(
          Icons.close,
          color: Colors.black,
          size: 28.sp,
        ),
      ),
      title: Text(
        'Search',
        style: Styles.popiansBold22.copyWith(color: Colors.black),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
