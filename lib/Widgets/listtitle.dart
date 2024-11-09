import 'package:flutter/material.dart';

class ListTitle extends StatelessWidget {
  final String image, label, label2, time;
  final Color color;
  final IconData iconData;
  const ListTitle(
      this.image, this.label, this.iconData, this.label2, this.time,this.color);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
        radius: 25,
      ),
      title: Text(
        label,
        style: TextStyle(
            fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      subtitle: Row(
        children: [
          Icon(iconData, color: color),
          SizedBox(width: size.width * .02),
          Text(
            label2,
            style: TextStyle(fontSize: 17, color: Colors.white30),
          ),
        ],
      ),
      trailing: Text(time,
          style: TextStyle(
            fontSize: 13,color: Colors.white30
          )),
    );
  }
}
