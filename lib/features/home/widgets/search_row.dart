import 'package:flutter/material.dart';
import 'package:job_founder/core/theme/colors.dart';
import 'package:job_founder/core/theme/styles.dart';

class SearchRow extends StatelessWidget {
  const SearchRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 270,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search a job or position',
              helperStyle: Styles.popiansRegular15.copyWith(color: Colors.grey),
              filled: true,
              fillColor: AppColors.secondaryColor,
              prefixIcon: Icon(
                Icons.search,
                color: AppColors.primaryColor,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        SizedBox(width: 16),
        Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            Icons.filter_list_alt,
            color: AppColors.primaryColor,
            size: 30,
          ),
        )
      ],
    );
  }
}
