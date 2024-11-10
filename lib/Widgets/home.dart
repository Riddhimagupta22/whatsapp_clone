import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/ListView.dart';
import 'package:whatsapp_clone/Widgets/drawerlistview.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _State();
}

class _State extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "WhatsApp",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xff0a131a),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
                size: 25,
                color: Colors.white,
              )), Builder(
                builder: (context) {
                  return IconButton(
                  onPressed: () {Scaffold.of(context).openEndDrawer();},
                  icon: const Icon(
                    Icons.more_vert,
                    size: 25,
                    color: Colors.white,
                  ));
                }
              ),
          // PopupMenuButton<String>(
          //     color: const Color(0xff0a131a),
          //     onSelected: (value) {
          //       // Handle the menu selection
          //     },
          //     itemBuilder: (BuildContext context) {
          //       return [
          //         const PopupMenuItem(
          //             value: 'new_group',
          //             child: Text(
          //               "New group",
          //               style: TextStyle(color: Colors.white),
          //             )),
          //         const PopupMenuItem(
          //             value: 'new_broadcast',
          //             child: Text(
          //               "New broadcast",
          //               style: TextStyle(color: Colors.white),
          //             )),
          //         const PopupMenuItem(
          //             value: 'linked_devices',
          //             child: Text(
          //               "Linked devices",
          //               style: TextStyle(color: Colors.white),
          //             )),
          //         const PopupMenuItem(
          //             value: 'starred_messages',
          //             child: Text(
          //               "Starred messages",
          //               style: TextStyle(color: Colors.white),
          //             )),
          //         const PopupMenuItem(
          //             value: 'payments',
          //             child: Text(
          //               "Payments",
          //               style: TextStyle(color: Colors.white),
          //             )),
          //         const PopupMenuItem(
          //             value: 'settings',
          //             child: Text(
          //               "Settings",
          //               style: TextStyle(color: Colors.white),
          //             )),
          //         ];
          //     }),
        ],
      ),
      endDrawerEnableOpenDragGesture:true,
      endDrawer: Drawer(
        backgroundColor: const Color(0xff0a131a),
        child: Drawerlistview(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color(0xff0a131a),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: size.width * .132,
                width: size.width * .9,
                decoration: const BoxDecoration(
                    color: Color(0xff272c30),
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        width: size.width*.07,
                        height: size.height*.07,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(colors: [Colors.blue,Colors.teal],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,)
                        ),
                        child: Center(
                          child: Container(
                            width: size.width*.05,
                            height: size.height*.05,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff272c30)
                            ),),
                        ),
                        ),

                      ),

                    const Padding(
                      padding: EdgeInsets.only(left: 15.0,),
                      child: Text(
                        "Ask Meta AI or Search",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff3f4649)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: size.height*.01,),
            const Expanded(child: Listview())
          ],
        ),
      ),
    );
  }
}
