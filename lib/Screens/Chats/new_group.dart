import 'package:flutter/material.dart';

class NewGroupPage extends StatefulWidget {
  const NewGroupPage({super.key});

  @override
  State<NewGroupPage> createState() => _NewGroupPageState();
}

class _NewGroupPageState extends State<NewGroupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text('New group',style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
            Text('Add members',style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),),
          ],
        ),
        backgroundColor: const Color(0xff0a131a),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,  size: 25,
            color: Colors.white,))
        ],
      ),
      floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.green,
      onPressed: () {},
      child: Icon(Icons.arrow_forward,color: Colors.black,),
    ),
      backgroundColor: Color(0xff0a131a),
    );
  }
}
