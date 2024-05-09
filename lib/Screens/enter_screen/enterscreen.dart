import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EnterScreen extends StatefulWidget {
  const EnterScreen({super.key});

  @override
  State<EnterScreen> createState() => _EnterScreenState();
}

class _EnterScreenState extends State<EnterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffFFE401),
      body: Column(
        children: [
          const SizedBox(
            height: 150,
          ),
          Image.asset('assets/img/bg.png'),
          const SizedBox(
            height: 120,
          ),
          const Text(
            'Build Awesome Apps',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Lets put your creativity on the\n     development highway',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/login');
                },
                child: Container(
                  height: 50,
                  width: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: const Color(0xff272727)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text('LOGIN', style: TextStyle(fontSize: 18,),),
                ),
              ),
              Container(
                height: 50,
                width: 150,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xff272727),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text('SIGNUP', style: TextStyle(fontSize: 18, color: Colors.white),),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
