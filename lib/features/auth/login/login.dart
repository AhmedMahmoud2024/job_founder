import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/theme/colors.dart';
import '../../../core/theme/styles.dart';
import '../register/register.dart';
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
              Text("Login here",style:Styles.popiansBold24
              ),
              SizedBox(height: 34,),
               Text("Welcome back you have been missed!",style:Styles.medium16,),
              SizedBox(height: 89,),
              CustomTextField(hintText: 'Email',),
              SizedBox(height: 29,),
              CustomTextField(hintText: 'Password',),
              SizedBox(height: 30,),
              Align(
                alignment: Alignment.topRight,
                child: Text("Forget Your Password?",style:Styles.popiansSemiBold14.copyWith(
                  color: AppColors.primaryColor
                )),
              ),
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
              child:Text("Sign In",style:Styles.popiansSemiBold14.copyWith(fontSize: 20))
              ),
              SizedBox(height: 40,),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                },
                child: Text("Create New Account",style:Styles.popiansSemiBold14))
            ],
          ),
        ),
      )
    );
  }
}

