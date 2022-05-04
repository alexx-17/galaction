import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:learn_now/mate.dart';
import 'package:learn_now/romana.dart';
import './Updates.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Learn Now',
        home: Scaffold(
          appBar: const CupertinoNavigationBar(
            middle: Text('Learn Now',
                style: TextStyle(color: Colors.white, fontSize: 20)),
            backgroundColor: Color.fromARGB(255, 77, 148, 255),
          ),
          body: Container(
            child: _selectedIndex == 0
                ? Romana()
                : (_selectedIndex == 1 ? Mate() : Updates()),
          ),
          bottomNavigationBar: CupertinoTabBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.book),
                label: 'Romana',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.hexagon),
                label: 'Matematica',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.news),
                label: 'Updates',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ));
  }
}
