import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Chats/Broadcast/address.dart';

class NewGroupPage extends StatefulWidget {
  const NewGroupPage({super.key});

  @override
  State<NewGroupPage> createState() => _NewGroupPageState();
}

class _NewGroupPageState extends State<NewGroupPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              'New broadcast',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              '0 0f 11 selected',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w200),
            ),
          ],
        ),
        backgroundColor: const Color(0xff0a131a),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 25,
                color: Colors.white,
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(
          Icons.check,
          color: Colors.black,
        ),
      ),
      backgroundColor: Color(0xff0a131a),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: size.height * .01,
            ),
            Center(
              child: Text(
                "Only contacts with +91 80599 XXXXX in thier",
                style: TextStyle(fontSize: 15, color: Colors.white30),
              ),
            ),
            Text(
              " address will receive your broadcast ",
              style: TextStyle(fontSize: 15, color: Colors.white30),
            ),
            Text(
              "messages.",
              style: TextStyle(fontSize: 15, color: Colors.white30),
            ),
            Divider(color: Colors.white30, height: size.height*.03,),
            Expanded(child: Addresspage())
          ],
        ),
      ),
    );
  }
}
