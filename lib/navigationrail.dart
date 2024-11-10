import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Appui/Calls/calls.dart';
import 'package:whatsapp_clone/Appui/Communities/communities.dart';
import 'package:whatsapp_clone/Appui/Updates/updatepage.dart';
import 'package:whatsapp_clone/Widgets/home.dart';

class Navigationrail extends StatefulWidget {
  const Navigationrail({super.key});

  @override
  State<Navigationrail> createState() => _NavigationrailState();
}

class _NavigationrailState extends State<Navigationrail> {
  final PageController _pageViewController = PageController();
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //   body: PageView(
    //   controller: _pageViewController,
    //   onPageChanged: (index) {
    //     setState(() {
    //       _selectedIndex = index;
    //     });
    //   },
    //   children: [
    //     HomePage(),
    //     Updatepage(),
    //     Communities(),
    //     Calls(),
    //   ],
    // ),
    //   Row(
    //     children: [
    //       NavigationRail(
    //         labelType: NavigationRailLabelType.all,
    //         selectedIndex: _selectedIndex,
    //           onDestinationSelected: (index){
    //           setState(() {
    //             _selectedIndex = index;
    //           });
    //           },
    //
    //           destinations: [
    //             NavigationRailDestination(
    //                 icon: Icon(Icons.chat), label: Text('Chats')),
    //             NavigationRailDestination(
    //                 icon: Icon(Icons.update), label: Text('Updates')),
    //             NavigationRailDestination(
    //                 icon: Icon(Icons.people_outline),
    //                 label: Text('Communities')),
    //             NavigationRailDestination(
    //                 icon: Icon(Icons.call_outlined), label: Text('Calls')),
    //           ],
    //           )
    //     ],
    //   ),
    );
  }
}
