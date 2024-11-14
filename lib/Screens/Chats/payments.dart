import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payments',style: TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
        backgroundColor: const Color(0xff0a131a),
      ),
      backgroundColor: Color(0xff0a131a),
    );
  }
}
