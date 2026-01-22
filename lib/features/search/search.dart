import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_founder/core/theme/colors.dart';
import 'package:job_founder/core/theme/styles.dart';
import 'search_result.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<String> _searchResults = [];
  
  // Sample data for demonstration
  final List<String> _allJobs = [
    'Flutter Developer',
    'Senior Flutter Developer',
    'Mobile App Developer',
    'Full Stack Developer',
    'Frontend Developer',
    'Backend Developer',
    'UI/UX Designer',
    'DevOps Engineer',
    'Data Scientist',
    'Machine Learning Engineer',
    'Web Developer',
    'React Native Developer',
    'Software Architect',
    'Database Administrator',
    'Cloud Engineer',
  ];

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_filterResults);
  }

  void _filterResults() {
    final query = _searchController.text.toLowerCase();
    if (query.isEmpty) {
      setState(() {
        _searchResults = [];
      });
    } else {
      setState(() {
        _searchResults = _allJobs
            .where((job) => job.toLowerCase().contains(query))
            .toList();
      });
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _navigateToResult(String jobTitle) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SearchResultScreen(jobTitle: jobTitle),
      ),
    );
  }

  void _closeSearch() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: _closeSearch,
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
      ),
      body: Column(
        children: [
          // Search Bar and Filter Row
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Row(
              children: [
                // Search TextField Container
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: AppColors.secondaryColor,
                    ),
                    child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        hintText: 'Search jobs...',
                        hintStyle: Styles.popiansMedium14Gray.copyWith(
                          color: Colors.grey[400],
                        ),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: AppColors.primaryColor,
                          size: 24.sp,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 12.h,
                        ),
                      ),
                      style: Styles.popiansMedium14Gray.copyWith(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12.w),
                // Filter Button Container
                GestureDetector(
                  onTap: () {
                    // Add filter functionality here
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Filter coming soon!')),
                    );
                  },
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
                ),
              ],
            ),
          ),
          // Results ListView
          Expanded(
            child: _searchResults.isEmpty && _searchController.text.isEmpty
                ? _buildEmptyState()
                : _searchResults.isEmpty
                    ? _buildNoResultsState()
                    : ListView.builder(
                        itemCount: _searchResults.length,
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              _navigateToResult(_searchResults[index]);
                            },
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          _searchResults[index],
                                          style:
                                              Styles.popiansSemiBold14.copyWith(
                                            color: Colors.black,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(height: 4.h),
                                        Text(
                                          'Tap to view details',
                                          style:
                                              Styles.popiansMedium14Gray.copyWith(
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
                        },
                      ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.search,
            size: 60.sp,
            color: Colors.grey[300],
          ),
          SizedBox(height: 20.h),
          Text(
            'Start searching for jobs',
            style: Styles.popiansSemiBold14.copyWith(
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Type a job title to find opportunities',
            style: Styles.popiansMedium14Gray.copyWith(
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNoResultsState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.inbox,
            size: 60.sp,
            color: Colors.grey[300],
          ),
          SizedBox(height: 20.h),
          Text(
            'No results found',
            style: Styles.popiansSemiBold14.copyWith(
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Try searching with different keywords',
            style: Styles.popiansMedium14Gray.copyWith(
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }
}
