import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/listtitle.dart';

class Listview extends StatefulWidget {
  const Listview({super.key});

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTitle('images/WhatsApp Image 2024-11-07 at 22.01.51.jpeg', "Avyan", Icons.done_all, "knock knock",
            "1:02",Colors.blue),
        ListTitle('images/WhatsApp Image 2024-11-07 at 22.10.12.jpeg', "Andrew", Icons.done_all, "who's there",
            "Yesterday",Colors.blue),
        ListTitle(
            'images/WhatsApp Image 2024-11-07 at 22.10.12.jpeg', "Eric", Icons.done, "funny bear", "Yesterday",Colors.white30),
        ListTitle('images/WhatsApp Image 2024-11-07 at 22.13.49.jpeg', "Olivia", Icons.done_all,
            "funny bear who", "12:00",Colors.blue),
        ListTitle('images/WhatsApp Image 2024-11-07 at 16.22.24.jpeg', "Emma", Icons.done_all, "knock knock",
            "Yesterday",Colors.blue),
        ListTitle(
            'images/WhatsApp Image 2024-11-07 at 16.22.24 (1).jpeg', "Mia", Icons.done, "who's there", "Tuesday",Colors.white30),
        ListTitle('images/WhatsApp Image 2024-11-07 at 22.13.49.jpeg', "Amelia", Icons.done_all, "funny bear",
            "Monday",Colors.blue),
        ListTitle('images/WhatsApp Image 2024-11-07 at 16.22.25.jpeg', "Sophia", Icons.done_all,
            "funny bear who", "Saturday",Colors.blue),
        ListTitle('images/WhatsApp Image 2024-11-07 at 16.22.24 (1).jpeg', "Mia", Icons.done, "oops i did it again",
            "Sunnday",Colors.white30),
      ],
    );
  }
}
