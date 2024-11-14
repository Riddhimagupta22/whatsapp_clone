import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Settings/optionlistview.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Divider(color: Colors.white12,),
        ListTile(
          leading: CircleAvatar(
            radius: 32,
            backgroundImage:
                AssetImage("images/WhatsApp Image 2024-11-07 at 21.58.11.jpeg"),
          ),
          title: Text(
            'Riddhima ',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
          ),
          subtitle: Text(
            "Under the same sky  ",
            style: TextStyle(color: Colors.white54),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.qr_code_scanner_rounded,
                  color: Colors.green,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_circle_outline,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
        Divider(color: Colors.white12,),
Optionlistviewpage(),
      ],
    );
  }
}
