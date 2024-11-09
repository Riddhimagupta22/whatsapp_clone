import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Channel {
  final String image,name,text,time ;
  final IconData icon;
  Channel(this.image,this.name,this.icon,this.text,this.time);
}

List Channels = [
  Channel('images/news18.jpg', "News18 India", Icons.photo ,'photo', '9:45'),
  Channel('images/abpnews.jpg', "ABP News",Icons.delete ,'Msg is deleted', 'Yesterday'),
  Channel('images/whatsapp.jpg', "WhatsApp",Icons.videocam_sharp ,'https://...', 'Yesterday'),
  Channel('images/travel.jpg', " Tech Travel Eat",Icons.photo ,'https://...', '08/10/2024'),
  Channel('images/icc.jpg', "ICC", Icons.photo,'photo', '07/10/2024'),
  Channel('images/maths.jpg', "Neha Agrawal",Icons.photo ,'Lock-in Series', '08/9/2024'),

];