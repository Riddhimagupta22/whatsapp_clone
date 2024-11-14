import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Chats/Groups/Contacts/contact_listtile.dart';

class Addresspage extends StatefulWidget {
  const Addresspage({super.key});

  @override
  State<Addresspage> createState() => _AddresspageState();
}

class _AddresspageState extends State<Addresspage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        SizedBox(
          height: size.height * .001,
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
