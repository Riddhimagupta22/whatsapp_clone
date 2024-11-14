import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Appui/Widgets/List/listtitle.dart';
import 'package:whatsapp_clone/Screens/Chats/Groups/Contacts/contact_listtile.dart';

class Contactslistview extends StatefulWidget {
  const Contactslistview({super.key});

  @override
  State<Contactslistview> createState() => _ContactslistviewState();
}

class _ContactslistviewState extends State<Contactslistview> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Divider(
          color: Colors.white12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          child: Text("Frequently contacted",
              style: TextStyle(
                  color: Colors.white30,
                  fontWeight: FontWeight.w500,
                  fontSize: 15)),
        ),
        ContactListtile(
          'images/WhatsApp Image 2024-11-07 at 22.10.12.jpeg',
          'Anvi',
          "Love yourself",
        ),
        ContactListtile(
          'images/WhatsApp Image 2024-11-07 at 22.01.51.jpeg',
          'Vani',
          "Think endless",
        ),
        ContactListtile(
          'images/WhatsApp Image 2024-11-07 at 22.01.51.jpeg',
          'Jackson',
          "Seeking",
        ),
        SizedBox(
          height: size.height * .001,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Text("Contacts on WhatsApp",
              style: TextStyle(
                  color: Colors.white30,
                  fontWeight: FontWeight.w500,
                  fontSize: 15)),
        ),
        SizedBox(
          height: size.height * .001,
        ),
        ContactListtile(
          'images/WhatsApp Image 2024-11-07 at 22.13.49.jpeg',
          "Amelia",
          "It goes on ...",
        ),
        ContactListtile(
          'images/WhatsApp Image 2024-11-07 at 22.10.12.jpeg',
          "Andrew",
          "who's there",
        ),
        ContactListtile(
          'images/WhatsApp Image 2024-11-07 at 22.01.51.jpeg',
          "Avyan",
          "knock knock",
        ),
        ContactListtile(
          'images/WhatsApp Image 2024-11-07 at 22.01.51.jpeg',
          'Daniel',
          "👻👻",
        ),
        ContactListtile(
          'images/WhatsApp Image 2024-11-07 at 16.22.24.jpeg',
          "Emma",
          "knock knock",
        ),
        ContactListtile(
          'images/WhatsApp Image 2024-11-07 at 22.10.12.jpeg',
          "Eric",
          "Sleeping~",
        ),
        ContactListtile(
          'images/WhatsApp Image 2024-11-07 at 16.22.25.jpeg',
          'Jessica',
          ".",
        ),
        ContactListtile(
          'images/WhatsApp Image 2024-11-07 at 16.22.24 (1).jpeg',
          "Mia",
          "who's there",
        ),
        ContactListtile(
          'images/WhatsApp Image 2024-11-07 at 22.13.49.jpeg',
          "Olivia",
          "Live",
        ),
        ContactListtile(
          'images/WhatsApp Image 2024-11-07 at 16.22.25.jpeg',
          "Sophia",
          "and",
        ),
        ContactListtile(
          'images/WhatsApp Image 2024-11-07 at 16.22.24 (1).jpeg',
          "Tina",
          "let Live",
        ),
      ],
    );
  }
}
