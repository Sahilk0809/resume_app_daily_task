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
