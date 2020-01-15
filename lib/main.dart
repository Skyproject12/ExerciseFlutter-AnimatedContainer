import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Animated Container"),
        ),
        body: Center(
          child: GestureDetector(
            // ketika di klik maka akan refresh tampilan
            onTap: () {
              // melakukan refresh tampilan
              setState(() {});
            },
            child: AnimatedContainer(
              // custom color with rgba
              color: Color.fromARGB(255, random.nextInt(256),
                  random.nextInt(256), random.nextInt(256)),
              // durasin perubahan 1 detik
              duration: Duration(seconds: 1),
              // membuat tinggi dan lebar dari container random
              width: 50.0 + random.nextInt(90),
              height: 50.0 + random.nextInt(90),
            ),
          ),
        ),
      ),
    );
  }
}
