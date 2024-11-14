import 'package:flutter/material.dart';
import 'package:button_animation/button_animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
            child: AnimatedButton(
          label: "test button",
          duration: const Duration(seconds: 1),
          onPressed: () {},
          animationType: ButtonAnimationType.fade,
        )),
      ),
    );
  }
}
