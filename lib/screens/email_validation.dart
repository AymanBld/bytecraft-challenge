import 'package:bytecraft_challeng/constants.dart';
import 'package:bytecraft_challeng/widgets/my_button.dart';
import 'package:flutter/material.dart';

class EmailValidation extends StatelessWidget {
  const EmailValidation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundcolore,
        centerTitle: true,
        leadingWidth: 100,
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
        title: const Text(
          'Email Validation',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const SizedBox(height: 160),
            const Text(
              'Enter the verification code we sent to your email',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 40),
            TextField(
              maxLength: 6,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 40),
            MyButton(
              text: 'Verify',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
