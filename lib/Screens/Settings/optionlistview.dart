import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Settings/option.dart';


class Optionlistviewpage extends StatefulWidget {
  const Optionlistviewpage({super.key});

  @override
  State<Optionlistviewpage> createState() => _OptionlistviewpageState();
}

class _OptionlistviewpageState extends State<Optionlistviewpage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: Options.length,
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: ListTile(
              leading:  Icon(
                Options[index].icon,
                color: Colors.white54,size: 25  ,
              ),

              title: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9.0),
                child: Text(
                  Options[index].label,
                  style: TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w400, color: Colors.white),
                ),
              ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 9.0),
                  child: Text(
                    Options[index].text,
                    style: TextStyle(fontSize: 15, color: Colors.white54),
                  ),
                ),
            ),
          );
        }
    );
  }
}
