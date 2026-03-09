import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_founder/core/theme/colors.dart';
import 'package:job_founder/core/theme/styles.dart';
import 'package:job_founder/features/jobs/logic/cubit/jobs_cubit.dart';
import 'package:job_founder/features/jobs/logic/cubit/jobs_state.dart';

class FeaturedJobsRow extends StatelessWidget {
  const FeaturedJobsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobsCubit, JobsState>(
      builder: (context, state) {
        if (state is Loading) {
          return Center(child: CircularProgressIndicator());
        }
        final jobs = context.read<JobsCubit>().jobs;
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(jobs.length, (index) {
                return Container(
                  width: 156,
                  height: 230,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        jobs[index].companyLogo,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: 50,
                            height: 50,
                            child: Center(child: Icon(Icons.image)),
                          );
                        },
                        width: 56,
                        height: 56,
                      ),
                      SizedBox(height: 7),
                      Text(
                        jobs[index].jobTitle,
                        style: Styles.popiansSemiBold14,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 7),
                      Text(
                        jobs[index].companyName,
                        style: Styles.popiansRegular15.copyWith(fontSize: 12),
                      ),
                      SizedBox(height: 7),
                      Text(
                        jobs[index].id.toString(),
                        style: Styles.popiansMedium14Gray
                            .copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                );
              })
            ],
          ),
        );
      },
    );
  }
}
