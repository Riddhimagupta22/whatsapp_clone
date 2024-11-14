import 'package:flutter/material.dart';

class StarredMessagespage extends StatefulWidget {
  const StarredMessagespage({super.key});

  @override
  State<StarredMessagespage> createState() => _StarredMessagespageState();
}

class _StarredMessagespageState extends State<StarredMessagespage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Starred messages',style: TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
        backgroundColor: const Color(0xff0a131a),
        
      ),
      backgroundColor: Color(0xff0a131a),
      body: Column(
        children: [
          Icon(Icons.star)
        ],
      ),

    );
  }
}
