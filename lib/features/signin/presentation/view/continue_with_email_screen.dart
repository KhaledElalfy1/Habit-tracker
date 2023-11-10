import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracker/features/forget_password/presentation/view/forget_password_screen.dart';
import 'package:habit_tracker/core/utilits/custom_appbar.dart';
import 'package:habit_tracker/core/utilits/custom_text_form_filed.dart';
import 'package:habit_tracker/features/home/presentation/view/home_view.dart';
import 'package:habit_tracker/features/signin/presentation/view_model/sign_in_cubit/sign_in_cubit.dart';
import 'package:habit_tracker/features/signup/presentation/view/signup1.dart';

import '../../../../core/utilits/custom_button.dart';

class ContinueWithEmail extends StatefulWidget {
  const ContinueWithEmail({super.key});

  @override
  State<ContinueWithEmail> createState() => _ContinueWithEmailState();
}

class _ContinueWithEmailState extends State<ContinueWithEmail> {
  GlobalKey<FormState> globalKey = GlobalKey();
  late String email, password;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<SignInCubit, SignInState>(
          listener: (context, state) {
            if (state is SignInSuccess) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeView(),
                ),
              );
            }
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Form(
                  key: globalKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomAppBar(text: 'Continuo with E-mail'),
                      const SizedBox(
                        height: 24,
                      ),
                      const Text(
                        'E - M A I L',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextFormFiled(
                        textEditingController: _emailController,
                        onChanged: (p0) {
                          email = p0;
                        },
                        hitText: 'Enter your E-mail',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'PASSWORD',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextFormFiled(
                        textEditingController: _passwordController,
                        onChanged: (p0) {
                          password = p0;
                        },
                        hitText: 'Enter your password',
                        obscureText: true,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ForgetPAssword(),
                            ),
                          );
                        },
                        child: const Text(
                          'I forget password',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 85,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpViewOne(),
                            ),
                          );
                        },
                        child: const Text(
                          'Don\'t have account ?Let\'s create',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      CustomButton(
                        text: 'Next',
                        onTap: () {
                          if (globalKey.currentState!.validate()) {
                            BlocProvider.of<SignInCubit>(context)
                                .signin(email: email, password: password);
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  // void _navigationAfterValidation() async {
  //   if (globalKey.currentState!.validate()) {
  //     try {
  //       UserCredential userCredential =
  //           await FirebaseAuth.instance.signInWithEmailAndPassword(
  //         email: email,
  //         password: password,
  //       );
  //     } on FirebaseAuthException catch (e) {
  //       _handelFirebaseErrors(e);
  //     }

  //     _homeNavigation();
  //   }
  // }

  // void _homeNavigation() {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => const HomeView(),
  //     ),
  //   );
  // }

  // void _handelFirebaseErrors(FirebaseAuthException e) {
  //   if (e.code == 'user-not-found') {
  //     debugPrint('No user found for that email.');
  //   } else if (e.code == 'wrong-password') {
  //     debugPrint('Wrong password provided for that user.');
  //   }
  // }
}
