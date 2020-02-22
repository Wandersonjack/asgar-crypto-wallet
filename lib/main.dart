import 'package:asgar_crypto_wallet_app/screen/home_screen.dart';
import 'package:asgar_crypto_wallet_app/utilities/colors.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
