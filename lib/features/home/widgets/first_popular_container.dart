import 'package:flutter/material.dart';
import 'package:job_founder/core/helper/images.dart';
import 'package:job_founder/core/theme/colors.dart';
import 'package:job_founder/core/theme/styles.dart';

class FirstPopularContainer extends StatelessWidget {
  const FirstPopularContainer({
    super.key,
    this.radius,
  });

  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 74,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(radius ?? 20),
      ),
      child: ListTile(
        leading: Image.asset(
          Images.burgerKingImage,
          width: 45,
          height: 45,
        ),
        title: Text("Jr Executive", style: Styles.popiansSemiBold14),
        subtitle: Text(
          'Burger King',
          style: Styles.popiansRegular15.copyWith(fontSize: 13),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '\$96,000/Y',
              style: Styles.popiansSemiBold14.copyWith(fontSize: 12),
            ),
            Text(
              'Los Angeles, US',
              style: Styles.popiansRegular15.copyWith(fontSize: 11),
            )
          ],
        ),
      ),
    );
  }
}
