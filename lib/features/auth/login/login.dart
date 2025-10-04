
import 'package:flutter/material.dart';

import '../../../core/helper/strings.dart';
import '../../../core/theme/colors.dart';
import '../../../core/theme/styles.dart';
import '../../bottom_nav_bar_screen.dart';
import '../register/register.dart';
import 'widgets/custom_material_button.dart';
import 'widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 26.0,right: 26.0, top: 97),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(Strings.loginPageText,style:Styles.popiansBold24
              ),
              SizedBox(height: 34,),
               Text(Strings.loginPageWelcomeBackText,style:Styles.medium16,),
              SizedBox(height: 89,),
              CustomTextField(hintText: Strings.emailHintText,),
              SizedBox(height: 29,),
              CustomTextField(hintText: Strings.passwordHintText,),
              SizedBox(height: 30,),
              Align(
                alignment: Alignment.topRight,
                child: Text(Strings.forgetYourPasswordText,style:Styles.popiansSemiBold14.copyWith(
                  color: AppColors.primaryColor
                )),
              ),
              SizedBox(height: 30,),
              CustomMaterialButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBarScreen()));
              },MaterialButtonText: Strings.signInText),
              SizedBox(height: 40,),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                },
                child: Text(Strings.createNewAccountText,style:Styles.popiansSemiBold14))
            ],
          ),
        ),
      )
    );
  }
}



