import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/Screens/enter_screen/enterscreen.dart';
import 'package:resume_app_daily_task/Screens/gmail/gmail.dart';
import 'package:resume_app_daily_task/Screens/google/sign_in/email_screen.dart';
import 'package:resume_app_daily_task/Screens/google/sign_in/password_screen.dart';
import 'package:resume_app_daily_task/Screens/login_screen/loginScreen.dart';

class MyRoutes{
  static Map<String, Widget Function(BuildContext)> routes = {
    '/gmail': (context) => const Gmail(),
    '/enter': (context) => const EnterScreen(),
    '/login': (context) => const LoginScreen(),
    '/': (context) => const EmailScreen(),
    '/password': (context) => const PasswordScreen(),
  };
}