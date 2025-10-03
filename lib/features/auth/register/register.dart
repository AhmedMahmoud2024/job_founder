import 'package:flutter/material.dart';

import '../../../core/theme/colors.dart';
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
              Text("Create Account",style:Styles.popiansBold24
              ),
              SizedBox(height: 34,),
               Text("Create an account so you can explore all the existing jobs",style:Styles.popiansSemiBold14,textAlign: TextAlign.center,),
              SizedBox(height: 53,),
              CustomTextField(hintText: 'Email',),
              SizedBox(height: 26,),
              CustomTextField(hintText: 'Password',),
              SizedBox(height: 29,),
              CustomTextField(hintText: 'Confirm Password',),
              SizedBox(height: 30,),
             
              SizedBox(height: 30,),
              MaterialButton(onPressed: (){},
              color:AppColors.primaryColor,
              minWidth: 323,
              height:60,
              elevation:7,
              textColor: Colors.white,
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child:Text("Sign Up",style:Styles.popiansSemiBold14.copyWith(fontSize: 20))
              ),
              SizedBox(height: 40,),
              Text("Already have an account?",style:Styles.popiansSemiBold14)
            ],
          ),
        ),
      )
    );
  }
}