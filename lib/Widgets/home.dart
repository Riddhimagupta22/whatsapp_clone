import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/ListView.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
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
          PopupMenuButton(
              color: Color(0xff0a131a),
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                      child: Text(
                    "New group",
                    style: TextStyle(color: Colors.white),
                  )),
                  PopupMenuItem(
                      child: Text(
                    "New broadcast",
                    style: TextStyle(color: Colors.white),
                  )),
                  PopupMenuItem(
                      child: Text(
                    "Linked devices",
                    style: TextStyle(color: Colors.white),
                  )),
                  PopupMenuItem(
                      child: Text(
                    "Starred messages",
                    style: TextStyle(color: Colors.white),
                  )),
                  PopupMenuItem(
                      child: Text(
                    "Payments",
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
        child: Column(
          children: [
            Container(
              height: size.width * .132,
              width: size.width * .9,
              decoration: BoxDecoration(
                  color: Color(0xff272c30),
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(Icons.cached),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Ask Meta Al or Search",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff3f4649)),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: Listview())
          ],
        ),
      ),
    );
  }
}
