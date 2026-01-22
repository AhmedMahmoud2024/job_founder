import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'constants/search_constants.dart';
import 'widgets/search_app_bar.dart';
import 'widgets/search_bar_with_filter.dart';
import 'widgets/search_result_item.dart';
import 'widgets/empty_and_no_results_state.dart';
import 'search_result.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late final TextEditingController _searchController;
  List<String> _searchResults = [];

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController()
      ..addListener(_filterResults);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _filterResults() {
    final query = _searchController.text.toLowerCase().trim();
    setState(() {
      _searchResults = query.isEmpty
          ? []
          : SearchConstants.allJobs
              .where((job) => job.toLowerCase().contains(query))
              .toList();
    });
  }

  void _navigateToResult(String jobTitle) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SearchResultScreen(jobTitle: jobTitle),
      ),
    );
  }

  void _showFilterNotification() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text(SearchConstants.filterComingSoonMessage)),
    );
  }

  bool get _isEmpty => _searchResults.isEmpty && _searchController.text.isEmpty;
  bool get _hasNoResults => _searchResults.isEmpty && _searchController.text.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const SearchAppBar(),
      body: Column(
        children: [
          SearchBarWithFilter(
            controller: _searchController,
            onFilterTap: _showFilterNotification,
          ),
          Expanded(
            child: _isEmpty
                ? EmptyAndNoResultsState.empty()
                : _hasNoResults
                    ? EmptyAndNoResultsState.noResults()
                    : _buildSearchResultsList(),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchResultsList() {
    return ListView.builder(
      itemCount: _searchResults.length,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      itemBuilder: (context, index) {
        return SearchResultItem(
          jobTitle: _searchResults[index],
          onTap: () => _navigateToResult(_searchResults[index]),
        );
      },
    );
  }
}
