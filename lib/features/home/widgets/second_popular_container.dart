import 'package:flutter/material.dart';
import 'package:job_founder/core/helper/images.dart';
import 'package:job_founder/core/theme/colors.dart';
import 'package:job_founder/core/theme/styles.dart';

class SecondPopularContainer extends StatelessWidget {
  const SecondPopularContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 74,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        leading: Image.asset(
          Images.pImage,
          width: 41,
          height: 43,
        ),
        title: Text("Product Manager", style: Styles.popiansSemiBold14),
        subtitle: Text(
          'Beats',
          style: Styles.popiansRegular15.copyWith(fontSize: 13),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '\$84,000/Y',
              style: Styles.popiansSemiBold14.copyWith(fontSize: 12),
            ),
            Text(
              'Florida, US',
              style: Styles.popiansRegular15.copyWith(fontSize: 11),
            )
          ],
        ),
      ),
    );
  }
}
