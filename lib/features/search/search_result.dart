import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'constants/search_constants.dart';
import 'widgets/search_result_app_bar.dart';
import 'widgets/job_title_card.dart';
import 'widgets/section_widgets.dart';
import 'widgets/requirement_item.dart';
import 'widgets/benefit_item.dart';
import 'widgets/apply_button.dart';

class SearchResultScreen extends StatelessWidget {
  final String jobTitle;

  const SearchResultScreen({
    super.key,
    required this.jobTitle,
  });

  void _handleApply(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(SearchConstants.appliedMessage(jobTitle)),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: SearchResultAppBar(
        onBackPressed: () => Navigator.pop(context),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              JobTitleCard(jobTitle: jobTitle),
              SizedBox(height: 24.h),
              const SectionTitle(title: SearchConstants.companyInfoLabel),
              SizedBox(height: 12.h),
              const CompanyInfoCard(),
              SizedBox(height: 24.h),
              const SectionTitle(title: SearchConstants.jobDescriptionLabel),
              SizedBox(height: 12.h),
              const JobDescriptionText(),
              SizedBox(height: 24.h),
              const SectionTitle(title: SearchConstants.requirementsLabel),
              SizedBox(height: 12.h),
              ..._buildRequirements(),
              SizedBox(height: 24.h),
              const SectionTitle(title: SearchConstants.salaryBenefitsLabel),
              SizedBox(height: 12.h),
              ..._buildBenefits(),
              SizedBox(height: 40.h),
              ApplyButton(
                onPressed: () => _handleApply(context),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildRequirements() {
    return SearchConstants.requirements.map((requirement) {
      return RequirementItem(requirement: requirement);
    }).toList();
  }

  List<Widget> _buildBenefits() {
    return SearchConstants.benefits.entries.map((entry) {
      return BenefitItem(icon: entry.key, benefit: entry.value);
    }).toList();
  }
}
