import 'package:core_flutter_exam1/Screens/CartScreen/cartScreen.dart';
import 'package:core_flutter_exam1/Screens/DetailScreen/detailScreen.dart';
import 'package:core_flutter_exam1/Screens/HomeScreen/homeScreen.dart';
import 'package:core_flutter_exam1/Screens/SplashScreen/splashScreen.dart';
import 'package:core_flutter_exam1/Screens/order/orderScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) => SplashScreen(),
        '/home':(context) => HomeScreen(),
        '/detail':(context) => DetailaScreen(),
        '/cart':(context) => CartScreen(),
        '/order':(context) => OrderScreen(),
      },
    );
  }
}
