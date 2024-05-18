import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/utils/global.dart';
import 'idCard.dart';

class IdCardScreen extends StatefulWidget {
  const IdCardScreen({super.key});

  @override
  State<IdCardScreen> createState() => _IdCardScreenState();
}

class _IdCardScreenState extends State<IdCardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          shadowColor: Colors.black,
          elevation: 2,
          leading: const Icon(
            Icons.account_circle,
            size: 30,
          ),
          title: const Text(
            'Id Card',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 100,
                  backgroundImage:
                      (fileImage != null) ? FileImage(fileImage!) : null,
                ),
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: const Text('Name : ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  title: Text('$firstName $lastName',style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
                ListTile(
                  leading: const Text('D.O.B : ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  title: Text(dob,style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
                ListTile(
                  leading: const Text('Address : ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  title: Text(address,style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
                ListTile(
                  leading: const Text('Gender : ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  title: Text(gender,style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
                ListTile(
                  leading: const Text('Contact : ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  title: Text(phoneNumber,style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
                ListTile(
                  leading: const Text('Email : ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  title: Text(email,style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
                ListTile(
                  leading: const Text('Hobbies : ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  title: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(hobbySelected.length, (index) => Row(
                          children: [
                            Text('${hobbySelected[index]} ',style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                          ],
                        )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}