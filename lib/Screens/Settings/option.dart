import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Option {
  final String label, text;
  final IconData icon;
  Option(this.icon, this.label, this.text);
}

List Options = [
  Option(
      Icons.vpn_key_outlined, 'Account', 'Security nofications,change number'),
  Option(
      Icons.lock_outline, 'Privacy', 'Block contacts, disappearing messages'),
  Option(Icons.face_2, 'Avatar', 'Create, edit,profile photo'),
  Option(Icons.library_books_sharp, 'Lists', 'Manage people and groups'),
  Option(Icons.chat_outlined, 'Chats', 'Theme,wallpapers,chat history'),
  Option(Icons.notifications_none, 'Notifications', 'Message,group,call tones'),
  Option(Icons.data_saver_off_rounded, 'Storage and data',
      'Network usage, auto-download'),
  Option(Icons.wordpress, 'App language', 'English (devices language)'),
  Option(Icons.help_outline, 'Help', 'Help centre, contact us,privacy policy'),
  Option(Icons.people_alt_outlined, 'Invite a friend', ''),
];
