

import 'package:e_commerce_website/successfull_message.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 5, left: 25, right: 25),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                height: 130,
                width: 130,
                child: Image.asset("assets/images/fahion.png"),
              ),
              SizedBox(height: 7,),
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    "My life My Style ",
                    style: TextStyle(
                        fontFamily: "Gilroy-Medium",
                        
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )),
              SizedBox(height: 30,),
              Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Signup",
                    style: TextStyle(
                      fontFamily: "Gilroy-Black",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )),
              Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Create a new account",
                    style: TextStyle(
                        fontFamily: "Gilroy-Medium",
                        fontSize: 15,
                        color: Colors.grey),
                  )),
              SizedBox(
                height: 30,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "User name ",
                    style: TextStyle(
                      fontFamily: "Gilroy-Bold",
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  )),
              Container(
                height: 30,
                margin: EdgeInsets.all(8),
                child: const TextField(
                  // textAlign: TextAlign.start,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(right: 50, bottom: 21),
                    hintText: "Name",
                    prefixIcon: Icon(Icons.nest_cam_wired_stand_outlined,color: Colors.black,),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 230, 230, 230))),
                  ),
                ),
              ),
              SizedBox(
                height: 23,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Email",
                    style: TextStyle(
                      fontFamily: "Gilroy-Bold",
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  )),
              Container(
                margin: EdgeInsets.all(8),
                height: 30,
                child: const TextField(
                  obscureText: false,
                  // textAlign: TextAlign.start,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(right: 50, bottom: 21),
                    hintText: "Email Address",
                     prefixIcon: Icon(Icons.email_outlined,color: Colors.black,),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 230, 230, 230))),
                  ),
                ),
              ),
              SizedBox(
                height: 23,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Password",
                    style: TextStyle(
                      fontFamily: "Gilroy-Bold",
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  )),
              Container(
                margin: EdgeInsets.all(8),
                height: 30,
                child: const TextField(
                  obscureText: true,
                  // textAlign: TextAlign.start,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(right: 50, bottom: 21),
                    hintText: "Password",
                     prefixIcon: Icon(Icons.lock,color: Colors.black,),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 230, 230, 230))),
                  ),
                ),
              ),
              SizedBox(
                height: 23,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Confirm Password",
                    style: TextStyle(
                      fontFamily: "Gilroy-Bold",
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  )),
              Container(
                margin: EdgeInsets.all(8),
                height: 30,
                child: const TextField(
                  obscureText: true,
                  // textAlign: TextAlign.start,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(right: 50, bottom: 21),
                    hintText: "password",
                     prefixIcon: Icon(Icons.lock,color: Colors.black,),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 230, 230, 230))),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Icon(
                    Icons.check_box_outline_blank,
                    color: Colors.grey,
                  ),
                  Text(
                    
                    """  By creating an account you have to 
  agree with our terms and condition.
                    """,
                    style: TextStyle(color: Colors.grey,fontSize: 16),
                  ),
                ]),
              ),
              
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.only(bottom: 15),
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SucessFulRegistered()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontFamily: "Gilroy-Bold",
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      backgroundColor: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40,)
            ],
          ),
        ),
      ),
    );
  }
}