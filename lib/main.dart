import 'package:bytecraft_challeng/constants.dart';
import 'package:bytecraft_challeng/screens/email_validation.dart';
import 'package:bytecraft_challeng/screens/screen1.dart';
import 'package:bytecraft_challeng/screens/screen2.dart';
import 'package:bytecraft_challeng/screens/screen3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Screen1(),
      routes: {
        'screen1': (context) => const Screen1(),
        'screen2': (context) => const Screen2(),
        'screen3': (context) => const Screen3(),
        'email verify': (context) => const EmailValidation(),
      },
      theme: ThemeData(
        fontFamily: 'Sf Ui Display',
        scaffoldBackgroundColor: AppColors.backgroundcolore,
      ),
    );
  }
}
