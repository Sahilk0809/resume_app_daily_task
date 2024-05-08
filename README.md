# resume_app_daily_task

# 6.1 List of Map

## What is List and Map?

`List : ` The list is an ordered collection of objects and the List can contain duplicate values. 

### Predefined functions of list
add()
addAll()
insert()
insertAll()
<br>
remove()
removeAt()
removeLast()
removeRange()

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

