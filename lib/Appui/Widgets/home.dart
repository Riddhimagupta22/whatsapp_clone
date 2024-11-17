import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Appui/Widgets/List/ListView.dart';
import 'package:whatsapp_clone/Appui/Widgets/components/drawerlistview.dart';
import 'package:whatsapp_clone/Appui/Widgets/components/searchbar.dart';
import 'package:whatsapp_clone/Appui/Widgets/components/popmenubutton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _State();
}

class _State extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "WhatsApp",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xff0a131a),
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
              icon: const Icon(
                Icons.camera_alt_outlined,
                size: 25,
                color: Colors.white,
              )),
          Popmenubuttonpage(),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(Icons.chat),
      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color(0xff0a131a),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: size.height * .0632,
                width: size.width * .9,
                decoration: const BoxDecoration(
                    color: Color(0xff272c30),
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: Searchbarpage(),
              ),
            ),
            SizedBox(
              height: size.height * .01,
            ),
            const Expanded(child: Listview())
          ],
        ),
      ),
    );
  }
}
