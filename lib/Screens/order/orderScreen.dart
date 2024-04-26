import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 300
              ),
              child: Image.asset('assets/images/done.png',height: 200,),
            ),
            Text('Thank you for your order !!!',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),)
          ],
        ),
      ),
    );
  }
}
