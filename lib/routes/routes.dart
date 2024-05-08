import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/Screens/gmail/gmail.dart';

class MyRoutes{
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const Gmail(),
  };
}