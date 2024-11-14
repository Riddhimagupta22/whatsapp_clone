import 'package:flutter/material.dart';

class StatusPrivacypage extends StatefulWidget {
  const StatusPrivacypage({super.key});

  @override
  State<StatusPrivacypage> createState() => _StatusPrivacypageState();
}

class _StatusPrivacypageState extends State<StatusPrivacypage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff0a131a),
          title: Text(
            'Status privacy',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Color(0xff0a131a),

        body:Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
                child: Align( alignment: Alignment.topLeft,
                  child: Text(
                    'Who can see my status updates',
                    style: TextStyle(color: Colors.white54,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.circle_outlined),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        "My contacts",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500,fontSize: 17),
                      ),
                    ),]),
              ),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.circle_outlined),
                      ),
                  Text(
                    "My contacts except...",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                      SizedBox(width: size.width*.004,),
                  Text(
                    "O excluded",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.w600,fontSize: 15),
                  ),],),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.circle_outlined),
                      ),

                  Text(
                    "Only share with...",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500,fontSize: 17),
                  ),
                  SizedBox(width: size.width*.10,),
                  Text(
                    "O included",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.w600,fontSize: 15),
                  )
                                ],
                              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
                child: Text("Changes to your privacy settings won't affect status updates that you've sent already",style: TextStyle(color: Colors.white54,),),
              )
            ],
          ),
        ));
  }
}

