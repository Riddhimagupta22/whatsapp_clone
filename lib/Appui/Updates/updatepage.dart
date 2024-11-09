import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Appui/Updates/criclelistview.dart';
import 'package:whatsapp_clone/Appui/Updates/updatelistview.dart';

class Updatepage extends StatelessWidget {
  const Updatepage({super.key});

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
              color: Color(0xff0a131a),
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                      child: Text(
                    "Status privacy",
                    style: TextStyle(color: Colors.white),
                  )),
                  PopupMenuItem(
                      child: Text(
                    "Create channel",
                    style: TextStyle(color: Colors.white),
                  )),
                  PopupMenuItem(
                      child: Text(
                    "Settings",
                    style: TextStyle(color: Colors.white),
                  )),
                ];
              })
        ],
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
            // SizedBox(
            //   height: 80,
            //   child: ListView.builder(
            //     shrinkWrap: true,
            //       itemCount: 6,
            //       scrollDirection: Axis.horizontal,
            //       itemBuilder: (context, index) {
            //         return Container(
            //           height: 100,
            //           width: 100,
            //           padding: const EdgeInsets.all(8.0),
            //           decoration: BoxDecoration(
            //               color: Colors.red,
            //               borderRadius: BorderRadius.circular(100)),
            //         );
            //       }),
            // ),
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
}
