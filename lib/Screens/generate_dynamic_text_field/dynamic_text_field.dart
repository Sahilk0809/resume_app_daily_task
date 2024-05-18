import 'package:flutter/material.dart';

class DynamicTextField extends StatefulWidget {
  const DynamicTextField({super.key});

  @override
  State<DynamicTextField> createState() => _DynamicTextFieldState();
}

class _DynamicTextFieldState extends State<DynamicTextField> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 2,
          shadowColor: Colors.black,
          leading: const Icon(
            Icons.account_circle,
            size: 30,
          ),
          title: const Text(
            'Dynamic Text Field',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ...List.generate(
                text.length,
                (index) => ListTile(
                  title: TextFormField(
                    controller: text[index],
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            TextEditingController txtController = TextEditingController();
                            text.add(txtController);
                          });
                        },
                        icon: const Icon(
                          Icons.add,
                          size: 30,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            text.removeAt(index - 1);
                          });
                        },
                        icon: const Icon(
                          Icons.remove,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: GestureDetector(
          onTap: () {
            skills='';
            for (int i = 0; i < text.length; i++) {
              skills = '$skills ${text[i].text}';
            }
            setState(() {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    skills,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            });
          },
          child: const BottomAppBar(
            height: 70,
            elevation: 5,
            shadowColor: Colors.black,
            child: Center(
              child: Text(
                'Submit',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

List<TextEditingController> text = [
  txtController,
];

String skills = '';

TextEditingController txtController = TextEditingController();
