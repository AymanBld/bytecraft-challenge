import 'package:bytecraft_challeng/constants.dart';
import 'package:bytecraft_challeng/widgets/mu_text_field.dart';
import 'package:bytecraft_challeng/widgets/my_button.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController pass = TextEditingController();
    GlobalKey<FormState> formkey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundcolore,
        leadingWidth: 80,
        leading: MaterialButton(
          elevation: 0,
          color: Colors.black.withOpacity(0.1),
          padding: const EdgeInsets.all(15),
          shape: const CircleBorder(),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(height: 40),
            const Text(
              'Sign in now',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              'Please sign in to continue our app',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 40),
            Form(
              key: formkey,
              child: Column(
                children: [
                  MyTextField(
                    hint: 'Email',
                    isPassword: false,
                    ctrl: email,
                  ),
                  const SizedBox(height: 20),
                  MyTextField(
                    hint: 'Password',
                    isPassword: true,
                    ctrl: pass,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'email verify');
                },
                child: const Text(
                  'Forget password ?',
                  style: TextStyle(
                    color: AppColors.firstcolore,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            MyButton(
              text: 'Sign In',
              onTap: () {
                if (formkey.currentState!.validate()) {
                  Navigator.pushNamed(context, 'screen3');
                }
              },
            ),
            const SizedBox(height: 40),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account? ',
                  style: TextStyle(color: AppColors.grey),
                ),
                Text(
                  'Sign up',
                  style: TextStyle(
                    color: AppColors.firstcolore,
                  ),
                ),
              ],
            ),
            const Text(
              'Or connect',
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.grey),
            ),
            const SizedBox(height: 120),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/facebook.png',
                    height: 45,
                  ),
                  Image.asset(
                    'assets/images/instagram.png',
                    height: 45,
                  ),
                  Image.asset(
                    'assets/images/twitter.png',
                    height: 45,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
