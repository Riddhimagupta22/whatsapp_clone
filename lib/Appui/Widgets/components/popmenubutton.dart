import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Settings/settings.dart';
import 'package:whatsapp_clone/Screens/Chats/linked_device.dart';
import 'package:whatsapp_clone/Screens/Chats/Groups/new_broadcast.dart';
import 'package:whatsapp_clone/Screens/Chats/new_group.dart';
import 'package:whatsapp_clone/Screens/Chats/payments.dart';
import 'package:whatsapp_clone/Screens/Chats/starred_messages.dart';

class Popmenubuttonpage extends StatefulWidget {
  const Popmenubuttonpage({super.key});

  @override
  State<Popmenubuttonpage> createState() => _PopmenubuttonpageState();
}

class _PopmenubuttonpageState extends State<Popmenubuttonpage> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        color: const Color(0xff0a131a),
        onSelected: (value) {
          if ( value == 'new_group'){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const  NewGroupPage()));
          }
          else if ( value == 'new_broadcast'){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NewBroadcastPage()));
          }else if ( value == 'linked_devices'){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LinkedDevicePage()));
          }else if ( value == 'starred_messages'){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const StarredMessagespage()));
          }else if ( value == 'payments'){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PaymentPage()));
          }else if ( value == 'settings'){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Settingpage()));
          }
        },
        itemBuilder: (BuildContext context) {
          return [
            const PopupMenuItem(
                value: 'new_group',
                child: Text(
                  "New group",
                  style: TextStyle(color: Colors.white),
                )),
            const PopupMenuItem(
                value: 'new_broadcast',
                child: Text(
                  "New broadcast",
                  style: TextStyle(color: Colors.white),
                )),
            const PopupMenuItem(
                value: 'linked_devices',
                child: Text(
                  "Linked devices",
                  style: TextStyle(color: Colors.white),
                )),
            const PopupMenuItem(
                value: 'starred_messages',
                child: Text(
                  "Starred messages",
                  style: TextStyle(color: Colors.white),
                )),
            const PopupMenuItem(
                value: 'payments',
                child: Text(
                  "Payments",
                  style: TextStyle(color: Colors.white),
                )),
            const PopupMenuItem(
                value: 'settings',
                child: Text(
                  "Settings",
                  style: TextStyle(color: Colors.white),
                )),
          ];
        });
  }
}
