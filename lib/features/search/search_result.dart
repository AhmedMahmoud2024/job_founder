import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_founder/core/theme/colors.dart';
import 'package:job_founder/core/theme/styles.dart';

class SearchResultScreen extends StatelessWidget {
  final String jobTitle;

  const SearchResultScreen({
    super.key,
    required this.jobTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 24.sp,
          ),
        ),
        title: Text(
          'Job Details',
          style: Styles.popiansBold22.copyWith(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Job Title Card
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20.sp),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: AppColors.secondaryColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      jobTitle,
                      style: Styles.popiansBold22.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                            vertical: 6.h,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: Colors.white,
                          ),
                          child: Text(
                            'Full Time',
                            style: Styles.popiansMedium14Gray.copyWith(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                            vertical: 6.h,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: Colors.white,
                          ),
                          child: Text(
                            'Remote',
                            style: Styles.popiansMedium14Gray.copyWith(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.h),
              // Company Info Section
              _buildSectionTitle('Company Information'),
              SizedBox(height: 12.h),
              _buildInfoCard('Tech Company XYZ', 'Technology Industry'),
              SizedBox(height: 24.h),
              // Job Description
              _buildSectionTitle('Job Description'),
              SizedBox(height: 12.h),
              Text(
                'We are looking for a talented and experienced professional to join our team. This is an exciting opportunity to work on cutting-edge technology and make a real impact in the industry.',
                style: Styles.popiansMedium14Gray.copyWith(
                  color: Colors.grey[700],
                  height: 1.6,
                ),
              ),
              SizedBox(height: 24.h),
              // Requirements
              _buildSectionTitle('Requirements'),
              SizedBox(height: 12.h),
              _buildRequirementItem('3+ years of professional experience'),
              _buildRequirementItem('Strong problem-solving skills'),
              _buildRequirementItem('Excellent communication abilities'),
              _buildRequirementItem('Team player mindset'),
              SizedBox(height: 24.h),
              // Salary Info
              _buildSectionTitle('Salary & Benefits'),
              SizedBox(height: 12.h),
              _buildBenefitItem('💰', '\$80,000 - \$120,000 per year'),
              _buildBenefitItem('🏥', 'Health Insurance'),
              _buildBenefitItem('🌴', '25 Days Paid Leave'),
              _buildBenefitItem('📚', 'Professional Development'),
              SizedBox(height: 40.h),
              // Apply Button
              SizedBox(
                width: double.infinity,
                height: 56.h,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Applied for $jobTitle'),
                        duration: const Duration(seconds: 2),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Text(
                    'Apply Now',
                    style: Styles.popiansSemiBold14.copyWith(
                      color: Colors.white,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: Styles.popiansBold22.copyWith(
        color: Colors.black,
        fontSize: 18.sp,
      ),
    );
  }

  Widget _buildInfoCard(String title, String subtitle) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: AppColors.secondaryColor,
          width: 1.w,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Styles.popiansSemiBold14.copyWith(
              color: Colors.black,
            ),
          ),
          SizedBox(height: 4.h),
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

  Widget _buildRequirementItem(String requirement) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
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
          ),
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

  Widget _buildBenefitItem(String icon, String benefit) {
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
