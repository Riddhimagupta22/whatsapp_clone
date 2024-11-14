import 'package:flutter/material.dart';

class Searchbarpage extends StatefulWidget {
  const Searchbarpage({super.key});
  @override
  State<Searchbarpage> createState() => _SearchbarpageState();
}
class _SearchbarpageState extends State<Searchbarpage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of( context ).size;
    return TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xff23282c),
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: size.width * .07,
              height: size.height * .07,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.teal],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )),
              child: Center(
                child: Container(
                  width: size.width * .05,
                  height: size.height * .05,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xff272c30)),
                ),
              ),
            ),
          ),
          hintStyle: const TextStyle(
              color: Color(0xffdbe1e7),
              fontSize: 18,
              fontWeight: FontWeight.w400),
          hintText: 'Ask Meta AI or Search',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              )),
          contentPadding: const EdgeInsets.all(10)),
    );
  }
}
