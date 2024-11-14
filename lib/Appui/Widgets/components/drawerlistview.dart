import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Appui/Calls/calls.dart';
import 'package:whatsapp_clone/Appui/Communities/communities.dart';
import 'package:whatsapp_clone/Appui/Updates/updatepage.dart';
import 'package:whatsapp_clone/Appui/Widgets/home.dart';

class Drawerlistview extends StatefulWidget {
  const Drawerlistview({super.key});

  @override
  State<Drawerlistview> createState() => _DrawerlistviewState();
}

class _DrawerlistviewState extends State<Drawerlistview> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  [
        ListTile(
          leading: Icon(Icons.chat,color: Colors.white,),
          title: Text(
            'Chats',
            style: TextStyle(
                fontSize: 19,color: Colors.white),
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
        },
        ),
        ListTile(
          leading: Icon(Icons.update,color: Colors.white,),
          title: Text(
            'Updates',
            style: TextStyle(
                fontSize: 19,color: Colors.white),
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Updatepage()));
          },
        ),
        ListTile(
          leading: Icon(Icons.people_outline,color: Colors.white,),
          title: Text(
            'Communities',
          style: TextStyle(
              fontSize: 19,color: Colors.white
          ),),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Communities()));
          },
        ),
        ListTile(
          leading: Icon(Icons.call_outlined,color: Colors.white,),
          title: Text(
            'Calls',
    style: TextStyle(
        fontSize: 19,color: Colors.white
          ),
        ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Calls()));
          },)
      ],
    );
  }
}
