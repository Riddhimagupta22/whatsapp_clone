import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/navigationrail.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Navigationrail()));
    });
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 160),
            child: Center(
              child: Image(
                image: AssetImage("images/whatsapp-removebg-preview.png"),
                height: size.height * .5,
                width: size.width * .4,
              ),
            ),
          ),
          Text(
            'from',
            style: TextStyle(
                color: Colors.white30,
                fontSize: 13,
                fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 140),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
              Center(
                child: Image(image: AssetImage("images/metalogo-removebg-preview.png"),
                height: size.height*.02,),
              ),
                  SizedBox(width: size.width*.01,),
                  Center(
                    child: Text("Meta",style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
