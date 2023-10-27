


import 'package:e_commerce_website/Login%20_Page.dart';
import 'package:e_commerce_website/signUpPage.dart';
import 'package:flutter/material.dart';


class OptionLoginSignUpButton extends StatefulWidget {
  const OptionLoginSignUpButton({super.key});

  @override
  State<OptionLoginSignUpButton> createState() => _OptionLoginSignUpButtonState();
}

class _OptionLoginSignUpButtonState extends State<OptionLoginSignUpButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "E-Commerce Website",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image:DecorationImage(image: AssetImage("assets/images/black-friday-elements-assortment.jpg"),fit:BoxFit.fill)
          ),
          child: Column(
            children: [
              SizedBox(height: 340,),
               Container(
                padding: EdgeInsets.all(23),
                width: double.infinity,
                 child: ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                      },
                      child: Text("Login",style: TextStyle(fontFamily: "Gilroy-Bold",fontSize: 15,color: Colors.white,),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.black,
                      ),  
                    ),
               ),
                  
                  SizedBox(height: 70,),
                  
                   Container(
                    padding: EdgeInsets.all(23),
                    width: double.infinity,
                     child: ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
                      },
                      child: Text("Sign Up",style: TextStyle(fontFamily: "Gilroy-Bold",fontSize: 15,color: Colors.white,),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.black,
                      ),  
                                     ),
                   ),
            ],
          )
        ),
      ),
    );;
  }
}