import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:job_founder/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:job_founder/features/auth/login/logic/cubit/login_state.dart';
import 'package:job_founder/features/auth/register/logic/cubit/register_cubit.dart';

import '../../../core/di/dependency_injection.dart';
import '../../../core/helper/strings.dart';
import '../../../core/theme/colors.dart';
import '../../../core/theme/styles.dart';
import '../../bottom_nav_bar_screen.dart';
import '../register/logic/cubit/register_state.dart' hide Loading;
import '../register/register.dart';
import 'widgets/custom_material_button.dart';
import 'widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});
  final TextEditingController email=TextEditingController();
 final TextEditingController password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 26.0, right: 26.0, top: 97),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(Strings.loginPageText, style: Styles.popiansBold24),
                SizedBox(
                  height: 34,
                ),
                Text(
                  Strings.loginPageWelcomeBackText,
                  style: Styles.medium16,
                ),
                SizedBox(
                  height: 89,
                ),
                CustomTextField(
                  hintText: Strings.emailHintText,
                ),
                SizedBox(
                  height: 29,
                ),
                CustomTextField(
                  hintText: Strings.passwordHintText,
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(Strings.forgetYourPasswordText,
                      style: Styles.popiansSemiBold14
                          .copyWith(color: AppColors.primaryColor)),
                ),
                SizedBox(
                  height: 30,
                ),
                BlocConsumer<LoginCubit, LoginState>(
                  listener: (context, state) {
                    state.whenOrNull(
                      success: (data) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Login Successful!'),
                            backgroundColor: Colors.green,
                          ),
                        
                        );
                           Navigator.push(context, MaterialPageRoute(builder: (_)=>BottomNavBarScreen()));
                      },
                      fail: (error) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(error),
                            backgroundColor: Colors.red,
                          ),
                        );
                      },
                    );
                  },
                  builder: (context, state) {
                    final cubit= context.read<LoginCubit>();
                   if (state is Loading) {
                      return CircularProgressIndicator();
                    }
                    return CustomMaterialButton(
                        onPressed: ()async {
                            await cubit.login(email: email.text, password: password.text);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomNavBarScreen()));
                        },
                        MaterialButtonText: Strings.signInText);
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BlocProvider(
                                    create: (context) => getIt<RegisterCubit>(),
                                    child: RegisterPage(),
                                  )));
                    },
                    child: Text(Strings.createNewAccountText,
                        style: Styles.popiansSemiBold14))
              ],
            ),
          ),
        ));
  }
}
