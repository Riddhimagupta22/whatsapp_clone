import 'package:flutter/material.dart';

class LinkedDevicePage extends StatefulWidget {
  const LinkedDevicePage({super.key});

  @override
  State<LinkedDevicePage> createState() => _LinkedDevicePageState();
}

class _LinkedDevicePageState extends State<LinkedDevicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings',style: TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
        backgroundColor: const Color(0xff0a131a),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,  size: 25,
            color: Colors.white,))
        ],
      ),
      backgroundColor: Color(0xff0a131a),
    );
  }
}
