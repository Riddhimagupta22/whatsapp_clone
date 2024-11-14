import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Appui/Updates/Circle/cricle.dart';

class Criclelistview extends StatefulWidget {
  const Criclelistview({super.key});

  @override
  State<Criclelistview> createState() => _CriclelistviewState();
}

class _CriclelistviewState extends State<Criclelistview> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
height: size.height*.15,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount:Cricles.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green, width: 2),
                      shape: BoxShape.circle),
                  margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(Cricles[index].image,)
                  ),
                   ),
                Text(Cricles[index].text, style: TextStyle(color: Colors.white),)
              ],
            );
           
          }),
    );
  }
}
