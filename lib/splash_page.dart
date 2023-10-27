
import 'dart:async';


import 'package:e_commerce_website/option_login_signUp_button.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

@override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () { 
         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OptionLoginSignUpButton()));
    }
    );
  }


  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      title: "E-Commerce Website",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration:BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/splashPicture.jpg"),fit: BoxFit.fill)
          ),
 ),
    )
    );
  }
}