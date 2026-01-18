import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_founder/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:job_founder/features/auth/login/login.dart';
import 'package:job_founder/features/auth/login/widgets/custom_material_button.dart';
import 'package:job_founder/features/auth/register/logic/cubit/register_cubit.dart';

import '../../../core/di/dependency_injection.dart';
import '../../../core/helper/strings.dart';
import '../../../core/theme/styles.dart';
import '../login/widgets/custom_text_field.dart';
import 'logic/cubit/register_state.dart';

class RegisterPage extends StatelessWidget {
   RegisterPage({super.key});

final TextEditingController emailController=TextEditingController();
final TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 26.0, right: 26.0, top: 97),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(Strings.creatAccountText, style: Styles.popiansBold24),
                SizedBox(
                  height: 34,
                ),
                Text(
                  Strings.createAnAccountRegisterPageText,
                  style: Styles.popiansSemiBold14,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 53,
                ),
                CustomTextField(
                  hintText: Strings.emailHintText,controller: emailController,
                ),
                SizedBox(
                  height: 26,
                ),
                CustomTextField(
                  hintText: Strings.passwordHintText,controller: passwordController,
                ),
                SizedBox(
                  height: 29,
                ),
                CustomTextField(
                  hintText: Strings.confirmPasswordHintText,
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 30,
                ),
                BlocConsumer<RegisterCubit, RegisterState>(
                  listener: (context, state) {
                    state.whenOrNull(
                      success: (data) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.green,
                            content: Text('Account Created Successfully'),
                          ),
                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => BlocProvider(
                              create: (context) => getIt<LoginCubit>(),
                              child: LoginPage(),
                            ),
                          ),
                        );
                      },
                      fail: (error) {
                        print(error);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.red,
                            content: Text('Error: $error'),
                          ),
                        );
                      },
                    );
                  },
                  builder: (context, state) {
                    final cubit= context.read<RegisterCubit>();
                    if (state is Loading) {
                      return CircularProgressIndicator();
                    }
                    return CustomMaterialButton(
                        onPressed: () async{
                           await cubit.register(email: emailController.text, password: passwordController.text);
                        },
                        MaterialButtonText: Strings.signUpText);
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                Text(Strings.alreadyHaveAnAccountText,
                    style: Styles.popiansSemiBold14)
              ],
            ),
          ),
        ));
  }
}
