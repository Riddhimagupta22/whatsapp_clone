import 'package:flutter/material.dart';

class Calllisttitle extends StatelessWidget {
  final IconData iconData, iconData2;
  final String image, label, label2;
  const Calllisttitle(
      this.image, this.label, this.iconData, this.label2, this.iconData2);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
      ),
      title: Text(
        label,
        style: TextStyle(
            fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      subtitle: Row(
        children: [
          Icon(iconData,color: Colors.green,),
          SizedBox(width: size.width * .02),
          Text(
            label2,
            style: TextStyle(fontSize: 17, color: Colors.white30),
          )
        ],
      ),
      trailing: Icon(iconData2,color: Colors.white,)
    );
  }
}
