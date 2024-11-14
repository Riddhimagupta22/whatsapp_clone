import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Chats/Groups/Contacts/contacts_listview.dart';

class NewBroadcastPage extends StatefulWidget {
  const NewBroadcastPage({super.key});

  @override
  State<NewBroadcastPage> createState() => _NewBroadcastPageState();
}

class _NewBroadcastPageState extends State<NewBroadcastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xff0a131a),
        title: Column(
          children: [
            Text(
              'New group',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              'Add members',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
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
      backgroundColor: Color(0xff0a131a),
      body:
      Contactslistview(),
    );
  }
}
