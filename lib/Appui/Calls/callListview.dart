import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Appui/Calls/callListTitle.dart';
import 'package:whatsapp_clone/Appui/Calls/favouritelisttile.dart';

class Calllistview extends StatefulWidget {
  const Calllistview({super.key});

  @override
  State<Calllistview> createState() => _CalllistviewState();
}

class _CalllistviewState extends State<Calllistview> {
  @override
  Widget build(BuildContext context) {
    return
      ListView(
        children: [
          Container(
            child: Row(
              children: [
                Padding(
                padding: const EdgeInsets.only(left: 15.0,top: 10),
                child: Text("Favourities",style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:16,color: Colors.white,),),
                        ),
                Padding(
                  padding: const EdgeInsets.only(left: 205.0),
                  child: Text('More',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:16,color: Colors.green,),),
                )
              ],
            ),

          ),



          Padding(
          padding: const EdgeInsets.only(left: 15.0,top: 10),
          child: Text("Recent",style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:16,color: Colors.white,),),
        ),
          Calllisttitle('images/WhatsApp Image 2024-11-07 at 16.22.24 (1).jpeg', 'Mia', Icons.call_made_sharp,
              "11 minutes ago", Icons.call_outlined),
          Calllisttitle('images/WhatsApp Image 2024-11-07 at 22.01.51.jpeg', 'Avyan', Icons.call_made_sharp,
              "Just now", Icons.videocam_outlined),
          Calllisttitle('images/WhatsApp Image 2024-11-07 at 16.22.24 (1).jpeg', 'Emma', Icons.call_made_sharp,
              "Yesterday, 21:18", Icons.call_outlined),
          Calllisttitle('images/WhatsApp Image 2024-11-07 at 16.22.25.jpeg', 'Sophia', Icons.call_made_sharp,
              "Yesterday, 16:18", Icons.call_outlined),
          Calllisttitle('images/WhatsApp Image 2024-11-07 at 22.13.49.jpeg', 'Emily', Icons.call_made_sharp,
              "2 November, 21:18", Icons.call_outlined),
          Calllisttitle('images/WhatsApp Image 2024-11-07 at 22.13.49.jpeg', 'Amelia', Icons.call_made_sharp,
              "29 October, 12:18", Icons.videocam_outlined),
          Calllisttitle('images/WhatsApp Image 2024-11-07 at 16.22.25.jpeg', 'Jessica', Icons.call_made_sharp,
              "25 October, 21:18", Icons.call_outlined),
          Calllisttitle('images/WhatsApp Image 2024-11-07 at 22.10.12.jpeg', 'Matthew', Icons.call_made_sharp,
              "10 October, 19:18", Icons.call_outlined),
          Calllisttitle('images/WhatsApp Image 2024-11-07 at 22.10.12.jpeg', 'Liam', Icons.call_made_sharp,
              "9 October, 21:18", Icons.videocam_outlined),
          Calllisttitle('images/WhatsApp Image 2024-11-07 at 22.01.51.jpeg', 'Daniel', Icons.call_made_sharp,
              "29 September, 1:18", Icons.call_outlined),
          Calllisttitle('images/WhatsApp Image 2024-11-07 at 22.01.51.jpeg', 'Jackson', Icons.call_made_sharp,
              "9 September, 21:18", Icons.videocam_outlined),
        ],

    );
  }
}
