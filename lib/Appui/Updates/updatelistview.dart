import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Appui/Updates/channel.dart';

class Updatelistview extends StatefulWidget {
  const Updatelistview({super.key});

  @override
  State<Updatelistview> createState() => _UpdatelistviewState();
}

class _UpdatelistviewState extends State<Updatelistview> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView.builder(

      itemCount: Channels.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(
              Channels[index].image,
            ),
          ),
          title: Text(
            Channels[index].name,
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          subtitle: Row(
            children: [
              Icon(
                Channels[index].icon,
                color: Colors.white,size: 20  ,
              ),
          SizedBox(width: size.width * .02),
          Text(
            Channels[index].text,
            style: TextStyle(fontSize: 17, color: Colors.white30),
          ),],),
          trailing: Text(Channels[index].time,
              style: TextStyle(fontSize: 13, color: Colors.white30)),
        );
      },
    );
  }
}
