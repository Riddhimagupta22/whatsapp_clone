import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Appui/Calls/callListview.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calls",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400),
        ),
        backgroundColor: Color(0xff0a131a),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt_outlined,
                size: 25,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 25,
                color: Colors.white,
              )),
          PopupMenuButton(
              color: Color(0xff0a131a),
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                      child: Text(
                    "Clear call log",
                    style: TextStyle(color: Colors.white),
                  )),
                  PopupMenuItem(
                      child: Text(
                    "Settings",
                    style: TextStyle(color: Colors.white),
                  )),
                ];
              })
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xff0a131a),


        child: Expanded(child: Calllistview()),
      ),

    );
  }
}
