import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Appui/Calls/callListview.dart';
import 'package:whatsapp_clone/Screens/Settings/settings.dart';
import 'package:whatsapp_clone/Screens/clear_log.dart';

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
              onPressed: () {
              },
              icon: Icon(
                Icons.search,
                size: 25,
                color: Colors.white,
              )),
          PopupMenuButton(
            onSelected: (value){
              if ( value == 'clear_call_log'){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ClearLogpage()));
              }else if ( value == 'settings'){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Settingpage()));
              }
            },
              color: Color(0xff0a131a),
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                      value: 'clear_call_log',
                      child: Text(
                    "Clear call log",
                    style: TextStyle(color: Colors.white),
                  )),
                  PopupMenuItem(
                      value: 'settings',
                      child: Text(
                    "Settings",
                    style: TextStyle(color: Colors.white),
                  )),
                ];
              })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(Icons.add_ic_call),
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
