import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_app_daily_task/utils/global.dart';

class IdCard extends StatefulWidget {
  const IdCard({super.key});

  @override
  State<IdCard> createState() => _IdCardState();
}

ImagePicker imagePicker = ImagePicker();
File? fileImage;
TextEditingController txtFirstName = TextEditingController();
TextEditingController txtLastName = TextEditingController();
TextEditingController txtPhoneNumber = TextEditingController();
TextEditingController txtAddress = TextEditingController();
GlobalKey<FormState> formKey = GlobalKey();

class _IdCardState extends State<IdCard> {
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
            'Information',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 100,
                    backgroundImage:
                        (fileImage != null) ? FileImage(fileImage!) : null,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () async {
                          XFile? xFileImage = await imagePicker.pickImage(
                              source: ImageSource.camera);
                          setState(() {
                            fileImage = File(xFileImage!.path);
                          });
                        },
                        icon: const Icon(
                          Icons.camera_alt,
                          size: 50,
                        ),
                      ),
                      IconButton(
                        onPressed: () async {
                          XFile? xFileImage = await imagePicker.pickImage(
                              source: ImageSource.gallery);
                          setState(() {
                            fileImage = File(xFileImage!.path);
                          });
                        },
                        icon: const Icon(
                          Icons.image,
                          size: 50,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 170,
                        child: fields(
                            hintText: 'Ex:- Sahil',
                            label: 'First Name',
                            controller: txtFirstName),
                      ),
                      SizedBox(
                        width: 170,
                        child: fields(
                            hintText: 'Ex:- Kashyap',
                            label: 'Last Name',
                            controller: txtLastName),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  fields(
                    hintText: 'Ex:- +91 9879525452',
                    label: 'Phone Number',
                    controller: txtPhoneNumber,
                    maxLength: 14,
                    keyBoardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  fields(
                    hintText: 'Address',
                    label: 'Address',
                    controller: txtAddress,
                    maxLines: 4,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Gender :-',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  genderField(genderType: 'Male'),
                  genderField(genderType: 'Female'),
                  genderField(genderType: 'Prefer not to say'),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Hobby :-',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  checkBoxField(index: 0),
                  checkBoxField(index: 1),
                  checkBoxField(index: 2),
                  checkBoxField(index: 3),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: GestureDetector(
          onTap: () {
            firstName = txtFirstName.text;
            lastName = txtLastName.text;
            phoneNumber = txtPhoneNumber.text;
            address = txtAddress.text;
            for (int i = 0; i < hobby.length; i++) {
              if (hobby[i]) {
                hobbySelected.add(hobbyType[i]);
              }
            }
            bool response = formKey.currentState!.validate();
            if (response) {
              Navigator.of(context).pushNamed('/idCard');
            }
          },
          child: const BottomAppBar(
            height: 70,
            elevation: 5,
            shadowColor: Colors.black,
            child: Center(
                child: Text(
              'Submit',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
          ),
        ),
      ),
    );
  }

  CheckboxListTile checkBoxField({required int index}) {
    return CheckboxListTile(
      value: hobby[index],
      onChanged: (value) {
        setState(() {
          hobby[index] = value!;
        });
      },
      title: Text(hobbyType[index]),
    );
  }

  RadioListTile<String> genderField({required String genderType}) {
    return RadioListTile(
      value: genderType,
      groupValue: gender,
      onChanged: (value) {
        setState(() {
          gender = value!;
        });
      },
      title: Text(genderType),
    );
  }

  TextFormField fields(
      {required String hintText,
      required String label,
      required controller,
      maxLength,
      maxLines,
      keyBoardType}) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Required';
        }
        return null;
      },
      keyboardType: keyBoardType,
      maxLines: maxLines,
      maxLength: maxLength,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: hintText,
        labelText: label,
        labelStyle: const TextStyle(
          color: Colors.black,
        ),
      ),
      cursorColor: Colors.black,
      controller: controller,
      textInputAction: TextInputAction.next,
    );
  }
}
