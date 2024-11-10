import 'package:flutter/material.dart';

class Favouritelisttile extends StatelessWidget {
  final IconData iconData, iconData2;
  final String image, label;
  const Favouritelisttile(this.image,this.label,this.iconData,this.iconData2);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView( shrinkWrap: false,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(image),
          ) ,
          title: Text(label,style:TextStyle(
              fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),),

          trailing: Row(
            children: [
              Icon(iconData,color: Colors.white,),
              Icon(iconData2,color: Colors.white,)
            ],
          ),


        ),
      ],
    );
  }
}
