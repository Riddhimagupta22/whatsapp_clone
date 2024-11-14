import 'package:flutter/material.dart';
class NewBroadcastPage extends StatefulWidget {
  const NewBroadcastPage({super.key});

  @override
  State<NewBroadcastPage> createState() => _NewBroadcastPageState();
}

class _NewBroadcastPageState extends State<NewBroadcastPage> {
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
