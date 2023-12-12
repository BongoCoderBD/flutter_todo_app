import 'package:flutter/material.dart';

import 'Screens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "ToDo App",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
