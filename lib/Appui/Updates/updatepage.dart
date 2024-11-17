import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Appui/Updates/Circle/criclelistview.dart';
import 'package:whatsapp_clone/Appui/Updates/updatelistview.dart';
import 'package:whatsapp_clone/Screens/Settings/settings.dart';
import 'package:whatsapp_clone/Screens/Updates/create_channel.dart';
import 'package:whatsapp_clone/Screens/Updates/status_privacy.dart';

class Updatepage extends StatefulWidget {
  const Updatepage({super.key});

  @override
  State<Updatepage> createState() => _UpdatepageState();
}

class _UpdatepageState extends State<Updatepage> {

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Updates",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400),
        ),
        backgroundColor: Color(0xff0a131a),
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
              icon: Icon(
                Icons.camera_alt_outlined,
                size: 25,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 25,
                color: Colors.white,
              )),
          PopupMenuButton(
              onSelected: (value){
                if ( value == 'status_privacy'){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const StatusPrivacypage()));
                }
                else if ( value == 'settings'){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Settingpage()));
                }
              },
              color: Color(0xff0a131a),
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    value: 'status_privacy' ,
                      child: Text(
                    "Status privacy",
                    style: TextStyle(color: Colors.white),
                  )),
                  PopupMenuItem(
                    onTap: (){
                      _showBottomSheet(context);
                    },
                  value: 'create_channel',
                      child: Text(
                    "Create channel",
                    style: TextStyle(color: Colors.white),
                  )),
                  PopupMenuItem(
                value: 'settings',
                      child: Text(
                    "Settings",
                    style: TextStyle(color: Colors.white),
                  )),
                ];
              })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(Icons.camera_alt_rounded),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xff0a131a),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 18.0, left: 18),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Status",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  )),
            ),
            Criclelistview(),
            Row(
              children: [
                SizedBox(width: size.width * .05),
                Text(
                  'Channels',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25),
                ),
                SizedBox(width: size.width * .43),
                Text('Explore',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.green,
                        fontSize: 15)),
                SizedBox(width: size.width * .01),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.green,
                  size: 15,
                )
              ],
            ),


            Expanded(child: Updatelistview()),
          ],
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context ){
    var size  = MediaQuery.of(context).size;
    showModalBottomSheet(
      backgroundColor: Color(0xff0a131a),
      context: context, builder: (context){ 
      return Container(
        height: size.height*.99,
          child: CreateChannelpage());
    },);
  }
}
