import 'package:flutter/material.dart';

class Communities extends StatelessWidget {
  const Communities({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    List<String> ChannelNames = [
      'Annoucements',
      'Time Square',
      'General',
    ];
    List<String> community1 = [
      'Announcements',
      'Time Story',
      'General',
    ];
    List<String> community1Subtitles = [
      'hiii',
      'right',
      'left',
    ];

    List<String> ChannelSubtitles = [
      'hloi',
      'hy',
      'Bye',
    ];
    List<String> times = [
      '8/11/2024',
      'Yesterday',
      '7/11/2024',
      '8/11/2024',
      'Yesterday',
      '7/11/2024',

    ];
    List<Image> images = [
      Image.asset('images/WhatsApp Image 2024-11-07 at 22.13.49.jpeg'),
      Image.asset('images/WhatsApp Image 2024-11-07 at 22.10.12.jpeg'),
      Image.asset('images/WhatsApp Image 2024-11-07 at 22.01.51.jpeg'),
      Image.asset('images/WhatsApp Image 2024-11-07 at 22.13.49.jpeg'),
      Image.asset('images/WhatsApp Image 2024-11-07 at 22.10.12.jpeg'),
      Image.asset('images/WhatsApp Image 2024-11-07 at 22.01.51.jpeg'),
    ];
    return Scaffold(
      backgroundColor: Color(0xFF0B141B),
      appBar: AppBar(
        backgroundColor: Color(0xFF0B141B),
        title: Text(
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 25, color: Colors.white),
            textAlign: TextAlign.left,
            'Communities'),
        actions: [

          IconButton(
              onPressed: () {},
              icon: Icon(Icons.photo_camera_outlined),
              color: Colors.white),
          PopupMenuButton(
              color: Color(0xff0a131a),
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                      child: Text(
                        "Settings",
                        style: TextStyle(color: Colors.white),
                      )),

                ];
              })
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15, top: 15),
                        height: size.height*.07,
                        width: size.height*.07,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                            shape: BoxShape.rectangle),
                        child: Icon(Icons.group,size: 30,),
                      ),
                      Positioned(
                        bottom: -13,
                        right: 0,
                        child: Container(width: size.width*.06,
                          height: size.height*.06,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green
                        ),
                        child: Center(child: Icon(Icons.add,size: 18,)),),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'New Community',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: size.height*.01,
              decoration: BoxDecoration(color: Colors.black),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, top: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 27,
                    backgroundImage: AssetImage('images/WhatsApp Image 2024-11-07 at 16.22.24 (1).jpeg'),
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 16, top: 5),
                      child: Text(
                        'Time story',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              height: size.height*.0005,
              decoration: BoxDecoration(color: Colors.grey),
            ),
            SizedBox(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: community1.length,
                  itemBuilder: (context, index) => ListTile(
                        title: Text(
                          community1[index],
                          style: TextStyle(color: Colors.white),
                        ),
                        leading: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: CircleAvatar( radius: 22,
                            backgroundImage: images[index].image,
                          ),
                        ),
                        trailing: Text(
                          times[index],
                          style: TextStyle(color: Colors.grey),
                        ),
                        subtitle: Text(
                          community1Subtitles[index],
                          style: TextStyle(color: Colors.grey),
                        ),
                      )),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, top: 20),
              height: size.height*.05,
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 15,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        'View all',
                        style: TextStyle(color: Colors.grey),
                      ))
                ],
              ),
            ),
            Container(
              height: size.height*.01,
              decoration: BoxDecoration(color: Colors.black),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, top: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 27,
                    backgroundImage: AssetImage('images/WhatsApp Image 2024-11-07 at 16.22.24 (1).jpeg'),
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 15, top: 5),
                      child: Text(
                        'Time Square',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              height: 0.3,
              decoration: BoxDecoration(color: Colors.grey),
            ),
            SizedBox(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: ChannelNames.length,
                  itemBuilder: (context, index) => ListTile(
                        title: Text(
                          ChannelNames[index],
                          style: TextStyle(color: Colors.white),
                        ),
                        leading: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: CircleAvatar(radius: 22,
                            backgroundImage: images[index].image,
                          ),
                        ),
                        trailing: Text(
                          times[index],
                          style: TextStyle(color: Colors.grey),
                        ),
                        subtitle: Text(
                          ChannelSubtitles[index],
                          style: TextStyle(color: Colors.grey),
                        ),
                      )),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, top: 20),
              height: size.height*.05,
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 15,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        'View all',
                        style: TextStyle(color: Colors.grey),
                      ))
                ],
              ),
            ),
            Container(
              height: size.height*.01,
              decoration: BoxDecoration(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
