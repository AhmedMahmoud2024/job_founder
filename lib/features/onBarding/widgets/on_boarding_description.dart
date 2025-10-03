import 'package:flutter/material.dart';

import '../../../core/helper/strings.dart';

class OnBoardingDescription extends StatelessWidget {
  const OnBoardingDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 300,
      child: Text(
      Strings.onBoardingDescription ,
        textAlign: TextAlign.center,
      ),
    );
  }
}