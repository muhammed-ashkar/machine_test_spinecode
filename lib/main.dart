import 'package:flutter/material.dart';
import 'package:machine_test/first_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      title: 'Fitness App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home:  LoginScreen(),
    );
  }
}
