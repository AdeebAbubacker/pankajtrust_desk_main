import 'package:flutter/material.dart';
import 'package:pankajtrust_app/presentation/student/screens/homescreen/horizontalStepper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
          // useMaterial3: true,
          ),
      home: const MyCustomStepper(),
    );
  }
}
