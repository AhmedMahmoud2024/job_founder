
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/di/dependency_injection.dart';
import '../../../core/helper/strings.dart';
import '../../../core/theme/colors.dart';
import '../../auth/login/logic/cubit/login_cubit.dart';
import '../../auth/login/login.dart';
import '../../auth/register/register.dart';

class OnBoardingButtonsRow extends StatelessWidget {
  const OnBoardingButtonsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(130, 30),
            elevation: 4,
            backgroundColor: AppColors.primaryColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
          ),
          onPressed: () {
           Navigator.push(context, MaterialPageRoute(builder: (_)=>
                        BlocProvider(
                        create: (context) => getIt<LoginCubit>(),
                        child: LoginPage(),
                      )
           ));  
          },
          child:const Text(Strings.loginText,style: TextStyle(
            color: Colors.white,fontWeight: FontWeight.bold,
    
          ),),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>  RegisterPage()));
          },
          child:const Text(Strings.registerText,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.black)),
    
        ),
      ],
    );
  }
}
