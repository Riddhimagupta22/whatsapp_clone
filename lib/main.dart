import 'package:flutter/material.dart';
import 'package:whatsapp_clone/navigationrail.dart';
import 'Widgets/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Whatsapp Clone",
      debugShowCheckedModeBanner: false,
      color: Colors.red,
      home: Navigationrail(),
    );
  }
}
