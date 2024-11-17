import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Appui/Calls/callListview.dart';
import 'package:whatsapp_clone/Screens/Settings/settings.dart';


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
              icon: const Icon(
                Icons.qr_code_scanner,
                size: 25,
                color: Colors.white,
              )),
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
              onSelected: (value) {
                if (value == 'settings') {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Settingpage()));
                }
              },
              color: Color(0xff0a131a),
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  backgroundColor: Color(0xff2a2f33),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text(
                                        'Cancel',
                                        style: TextStyle(color: Colors.green),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text(
                                        'OK',
                                        style: TextStyle(color: Colors.green),
                                      ),
                                    )
                                  ],
                                  content: Text(
                                    "Do you want to clear your entire call log?",
                                    style: TextStyle(
                                      color: Color(0xff99a0a1),
                                    ),
                                  ),
                                ));
                      },
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
