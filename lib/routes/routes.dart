import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/Screens/enter_screen/enterscreen.dart';
import 'package:resume_app_daily_task/Screens/gmail/gmail.dart';
import 'package:resume_app_daily_task/Screens/google/sign_in/email_screen.dart';
import 'package:resume_app_daily_task/Screens/google/sign_in/password_screen.dart';
import 'package:resume_app_daily_task/Screens/google/sign_in/succesful_screen.dart';
import 'package:resume_app_daily_task/Screens/id_card/id.dart';
import 'package:resume_app_daily_task/Screens/id_card/idCard.dart';
import 'package:resume_app_daily_task/Screens/image_picker/imagePicker.dart';
import 'package:resume_app_daily_task/Screens/login_screen/loginScreen.dart';
import '../Screens/generate_dynamic_text_field/dynamic_text_field.dart';

class MyRoutes{
  static Map<String, Widget Function(BuildContext)> routes = {
    '/gmail': (context) => const Gmail(),
    '/enter': (context) => const EnterScreen(),
    '/login': (context) => const LoginScreen(),
    '/email': (context) => const EmailScreen(),
    '/password': (context) => const PasswordScreen(),
    '/success': (context) => const SuccessScreen(),
    '/picker': (context) => const Picker(),
    '/register': (context) => const IdCard(),
    '/idCard': (context) => const IdCardScreen(),
    '/': (context) => const DynamicTextField(),
  };
}