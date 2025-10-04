import 'package:flutter/material.dart';
import 'package:job_founder/features/auth/login/widgets/custom_material_button.dart';

import '../../../core/helper/strings.dart';
import '../../../core/theme/styles.dart';
import '../login/widgets/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 26.0,right: 26.0, top: 97),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(Strings.creatAccountText,style:Styles.popiansBold24
              ),
              SizedBox(height: 34,),
               Text(Strings.createAnAccountRegisterPageText,style:Styles.popiansSemiBold14,textAlign: TextAlign.center,),
              SizedBox(height: 53,),
              CustomTextField(hintText: Strings.emailHintText,),
              SizedBox(height: 26,),
              CustomTextField(hintText: Strings.passwordHintText,),
              SizedBox(height: 29,),
              CustomTextField(hintText: Strings.confirmPasswordHintText,),
              SizedBox(height: 30,),
             
              SizedBox(height: 30,),
           CustomMaterialButton(onPressed: () {
             
           },MaterialButtonText: Strings.signUpText),
              SizedBox(height: 40,),
              Text(Strings.alreadyHaveAnAccountText,style:Styles.popiansSemiBold14)
            ],
          ),
        ),
      )
    );
  }
}