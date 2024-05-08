import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/utils/global.dart';

import 'components/gmailSmartWidget.dart';

class Gmail extends StatefulWidget {
  const Gmail({super.key});

  @override
  State<Gmail> createState() => _GmailState();
}

class _GmailState extends State<Gmail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        drawer: Drawer(
          backgroundColor: const Color(0xff2E2F32),
          child: Column(
            children: [
              const SizedBox(
                height: 80,
                child: DrawerHeader(
                  child: Text(
                    'Gmail',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                    ),
                  ),
                ),
              ),
              ...List.generate(
                  detailsText.length, (index) => buildListTile(index)),
            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey,
          elevation: 1,
          shadowColor: Colors.white,
          title: const Text(
            'Gmail',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
