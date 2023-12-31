import 'package:flutter/material.dart';
import 'package:weather_app/Screens/Getstarted.dart';
import 'models/constraints.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Constants myconstants = Constants();
    return MaterialApp(
      color: myconstants.primaryColor,
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Getstarted(),
    );
  }
}
