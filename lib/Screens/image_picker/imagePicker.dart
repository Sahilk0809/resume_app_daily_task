import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Picker extends StatefulWidget {
  const Picker({super.key});

  @override
  State<Picker> createState() => _PickerState();
}

ImagePicker imagePicker = ImagePicker();
File? fileImage;

class _PickerState extends State<Picker> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 3,
          shadowColor: Colors.black,
          title: const Text(
            'Image Picker',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: (fileImage != null)
                      ? DecorationImage(
                          fit: BoxFit.cover,
                          image: FileImage(fileImage!),
                        )
                      : null,
                ),
              ),
              const SizedBox(
                height: 60,
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
                      size: 60,
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
                      size: 60,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(
                  'Upload Me',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
