import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_founder/core/theme/styles.dart';

import '../constants/search_constants.dart';

/// Widget for empty and no results states
class EmptyAndNoResultsState extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const EmptyAndNoResultsState._({
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  /// Empty state when no search has been performed
  factory EmptyAndNoResultsState.empty() {
    return const EmptyAndNoResultsState._(
      title: SearchConstants.emptyStateTitle,
      subtitle: SearchConstants.emptyStateSubtitle,
      icon: Icons.search,
    );
  }

  /// No results state when search returns no matches
  factory EmptyAndNoResultsState.noResults() {
    return const EmptyAndNoResultsState._(
      title: SearchConstants.noResultsTitle,
      subtitle: SearchConstants.noResultsSubtitle,
      icon: Icons.inbox,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 60.sp,
            color: Colors.grey[300],
          ),
          SizedBox(height: 20.h),
          Text(
            title,
            style: Styles.popiansSemiBold14.copyWith(
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            subtitle,
            style: Styles.popiansMedium14Gray.copyWith(
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }
}
