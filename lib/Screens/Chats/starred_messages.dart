import 'package:flutter/material.dart';

class StarredMessagespage extends StatefulWidget {
  const StarredMessagespage({super.key});

  @override
  State<StarredMessagespage> createState() => _StarredMessagespageState();
}

class _StarredMessagespageState extends State<StarredMessagespage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Starred messages',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xff0a131a),
      ),
      backgroundColor: Color(0xff0a131a),
      body: Column(
        children: [
          Divider(color: Colors.white12,),
          Padding(
            padding: const EdgeInsets.only(top: 220),
            child: Center(
              child: CircleAvatar(
                backgroundColor: Color(0xff0a131a),
                radius: 40,
                backgroundImage: AssetImage("images/starredmessagesjpg-removebg-preview.png"),
              ),
            ),
          ),
          SizedBox( height: size.height*.07,),
          Center(
              child: Text(
            "Tap and hold on any",
            style: TextStyle(color: Colors.white30, fontSize: 16),
          )),
          Center(
              child: Text(
            "message in any chat to",
            style: TextStyle(color: Colors.white30, fontSize: 16),
          )),
          Center(
              child: Text(
            "star it,so you can easily",
            style: TextStyle(color: Colors.white30, fontSize: 16),
          )),
          Center(
              child: Text(
            "find it later.",
            style: TextStyle(color: Colors.white30, fontSize: 16),
          )),
        ],
      ),
    );
  }
}
