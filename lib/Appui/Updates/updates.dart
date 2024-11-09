import 'package:flutter/material.dart';

class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    List<String> whatsappChannelNames = [
      'News18 India',
      'ABP News',
      'Aaj Tak',
      'Neha Agrawal Mathematic',
      'TechBurner',
      'WhatsApp',

    ];
    List<String> whatsappChannelSubtitles = [
      'updates',
      'updates',
      'updates',
      'Photo',
      'Photo',
      'Photo',


    ];
    List<String> times = [
      '08:00 AM',
      '08:05 AM',
      '09:30 AM',
      '11:00 AM',
      '12:45 PM',
      '02:15 PM',

    ];
    List<Image> images = [
      Image.asset('images/WhatsApp Image 2024-11-07 at 22.13.49.jpeg'),
      Image.asset('images/WhatsApp Image 2024-11-07 at 22.13.49.jpeg'),
      Image.asset('images/WhatsApp Image 2024-11-07 at 22.13.49.jpeg'),
      Image.asset('images/WhatsApp Image 2024-11-07 at 22.13.49.jpeg'),
      Image.asset('images/WhatsApp Image 2024-11-07 at 22.13.49.jpeg'),
      Image.asset('images/WhatsApp Image 2024-11-07 at 22.13.49.jpeg'),

    ];
    return Scaffold(
      backgroundColor: Color(0xFF0B141B),
      appBar: AppBar(
        backgroundColor: Color(0xFF0B141B),
        title: Text(
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
            textAlign: TextAlign.left,
            'Updates'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.photo_camera_outlined),
              color: Colors.white),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.search), color: Colors.white),
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
                        "Crete channel",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15),
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  'Status',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 130,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.green, width: 2),
                            shape: BoxShape.circle),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: CircleAvatar(
                          radius: 28,
                          backgroundImage: images[index].image,
                        ),
                      )),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Text(
                    'Channels',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(
                    width: size.width * .5,
                  ),
                  Text(
                    'Explore',
                    style: TextStyle(fontSize: 15, color: Colors.green),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.green,
                    size: 15,
                  )
                ],
              ),
            ),
            SizedBox(
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: whatsappChannelNames.length,
                  itemBuilder: (context, index) => ListTile(
                        title: Text(
                          whatsappChannelNames[index],
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        subtitle: Row(
                          children: [
                            Icon(
                              Icons.photo,
                              color: Colors.grey,
                            ),
                            Text(
                              whatsappChannelSubtitles[index],
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        leading: CircleAvatar(
                          backgroundImage: images[index].image,
                          backgroundColor: Colors.white,
                        ),
                        trailing: Text(
                          times[index],
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
