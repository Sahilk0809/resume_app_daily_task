# resume_app_daily_task

# 6.1 List of Map

## What is List and Map?

`List : ` The list is an ordered collection of objects and the List can contain duplicate values. 

### Predefined functions of list

- Length of List
```bash

void main() {
 
    List name = ["Sahil", "S", "a", "h" , "i" , "l"];
  
    print(name.length);
 
}
```
- add()
```bash
void main() {

    List name = ["Sahil", "S", "a", "h" , "i" , "l"];
  
    print(name[0]);
  
    name.add(50);
  
    print(name);
}
```
- addAll()
```bash
void main() {

    List name = ["Sahil", "S", "a", "h" , "i" , "l"];
  
    print(name[0]);
  
    name.addAll(['Akhil', 4, 5]);
  
    print(name);
}
```
- insert()
```bash
void main() {

    List name = ["Sahil", "S", "a", "h" , "i" , "l"];

    print(name[0]);

    name.insert(2, 50);

    print(name);
}
```
- insertAll()
<br>

- remove()
```bash
void main() {
    List name = ["Sahil", "S", "a", "h" , "i" , "l"];
  
    print(name[0]);
  
    name.remove("B");
  
    print(name);
}
```
- removeAt()
```bash
void main() {
    List name = ["Sahil", "S", "a", "h" , "i" , "l"];
  
    print(name[0]);
  
    name.removeAt(3);
  
    print(name);
}
```

# Example

```bash
 List sports = ['cricket', 'football', 'tennis', 'baseball'];
```

`Map : ` A Map is an object that maps keys to values or is a collection of attribute-value pairs.

### Predefined functions of map
addAll()
remove()
forEach()
update()

# Example

```bash
Map details = {'Usrname':'tom','Password':'pass@123'};
```

# Generics

Generics in Dart provide a way to write reusable code that can work with different types. They allow you to define classes, functions, and interfaces that can operate on a variety of data types without sacrificing type safety. Generics are denoted by using angle brackets < > and a type parameter.

# 6.2 Status Bar 

- For Global

```bash
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.red),);
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.landscapeLeft]);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}
```

- For Appbar

```bash
class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: Colors.grey),
        backgroundColor: Colors.black,
        title: const Text('Status Bar', style: TextStyle(color: Colors.white,),),
      ),
    );
  }
}
```
# Gmail Drawer

<img src="https://github.com/Sahilk0809/resume_app_daily_task/assets/149374235/90c2ee4c-9017-4a49-b6d7-fb77cc91def2" height=65% width=22%>

# Login Page UI

<img src="https://github.com/Sahilk0809/resume_app_daily_task/assets/149374235/fe77cab8-e241-41a2-8bf6-815759305227" height=65% width=22%>
<img src="https://github.com/Sahilk0809/resume_app_daily_task/assets/149374235/5a0ed03f-df2f-4a7e-b0e1-a2e3f64f07b9" height=65% width=22%>

https://github.com/Sahilk0809/resume_app_daily_task/assets/149374235/bcc5b720-a4ad-449f-8697-e6a2a2e87724

# 6.4 ⭐Google Login Page⭐
<div align="center">
<img src="https://github.com/Sahilk0809/resume_app_daily_task/assets/149374235/6432248a-0bef-40c5-8b27-fc433c961388" height=65%>
<a href="https://github.com/Sahilk0809/resume_app_daily_task/blob/master/lib/Screens/google/sign_in/email_screen.dart"> ⭐Click here for the source code⭐ </a>
<br><br>
<img src="https://github.com/Sahilk0809/resume_app_daily_task/assets/149374235/3abaa670-1fc3-4f96-9e68-6e4eb8893564" height=65%>
<a href="https://github.com/Sahilk0809/resume_app_daily_task/blob/master/lib/Screens/google/sign_in/password_screen.dart"> ⭐Click here for the source code⭐ </a>
<br><br>
<img src="https://github.com/Sahilk0809/resume_app_daily_task/assets/149374235/be2481e7-c9b6-4966-9ee5-5dcd26f31ca7" height=65%>
<a href="https://github.com/Sahilk0809/resume_app_daily_task/blob/master/lib/Screens/google/sign_in/succesful_screen.dart"> ⭐Click here for the source code⭐ </a>

https://github.com/Sahilk0809/resume_app_daily_task/assets/149374235/a7a75e17-a64a-4aac-a878-2c3fe01ae987
</div>

# 6.5 Snack Bar
<img src="" height=65%>

# 6.6 Image Picker
<img src="https://github.com/Sahilk0809/resume_app_daily_task/assets/149374235/6b3f6d3f-2694-4ca0-b17d-79f7ebd50f35" height=65% width=22%>
<img src="https://github.com/Sahilk0809/resume_app_daily_task/assets/149374235/91ccc268-f5c2-4bc6-b83a-0a1098b440f4" height=65% width=22%>
<video src="https://github.com/Sahilk0809/resume_app_daily_task/assets/149374235/7286f4ec-d2bd-4b3e-b956-c53fc4db8602">
