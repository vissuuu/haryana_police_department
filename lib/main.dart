import 'package:flutter/material.dart';
import 'package:haryana_police_department/screens/change_password.dart';
import 'package:haryana_police_department/screens/landing.dart';
import 'package:haryana_police_department/screens/splash_screen.dart';
import 'package:haryana_police_department/screens/your_leaves.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const splash(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: const Center(
        child: Text("Sample")
      )
    );
  }
}
