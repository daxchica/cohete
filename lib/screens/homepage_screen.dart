import 'package:flutter/material.dart';
import '../main.dart';
import 'homepage_content.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'COHETE',
              style: TextStyle(fontSize: 12),
            ),
            Image.asset("images/rocket-artists-ai 60x60.png", height: 60),
            const Text(
              'IMPUESTOS',
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),

      body: const HomePageContent(),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
