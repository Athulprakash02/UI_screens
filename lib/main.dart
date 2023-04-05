import 'package:flutter/material.dart';
import 'package:grid/screens/screen_main.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primaryColor: Color.fromARGB(255, 54, 156, 193),
        

      ),title: 'grid',
      home: ScreenMain(),
    );
  }
}
