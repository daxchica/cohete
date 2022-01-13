import 'package:cohete/screens/homepage_screen.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        cardTheme: const CardTheme(
            elevation: 20,
            color: Color(0xff1a237e),
            shadowColor: Colors.white24),
        cardColor: Colors.black,
        appBarTheme: const AppBarTheme(
            shadowColor: Colors.black87,
            color: Colors.black,
            centerTitle: true),
      ),
      home: const MyHomePage(),
    );
  }
}
