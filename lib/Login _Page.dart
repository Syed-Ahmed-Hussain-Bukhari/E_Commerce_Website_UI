
import 'package:e_commerce_website/successfull_message.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 5,left: 25,right: 25),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10,),
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
                    "Welcome!",
                    style: TextStyle(
                      fontFamily: "Gilroy-Black",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )),
              Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "please login or signup to continue our app",
                    style: TextStyle(
                        fontFamily: "Gilroy-Medium",
                        fontSize: 15,
                        color: Colors.grey),
                  )),
              SizedBox(height: 30,),
              Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Email",
                    style: TextStyle(
                      fontFamily: "Gilroy-Bold",
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              Container(
                margin: EdgeInsets.all(8),
                height: 30,
                child: const TextField(
                  // textAlign: TextAlign.start,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(right: 50,bottom: 21),
                    hintText: "Email Address",
                    prefixIcon: Icon(Icons.email_outlined,color: Colors.black,),
                    focusedBorder:UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
                    enabledBorder:UnderlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 230, 230, 230))
                    ),
                  ),
                ),
              ),
              SizedBox(height: 23,),
              Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Password",
                    style: TextStyle(
                      fontFamily: "Gilroy-Bold",
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
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
                    contentPadding: EdgeInsets.only(right: 50,bottom: 21),
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock,color: Colors.black,),
                    focusedBorder:UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
                    enabledBorder:UnderlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 230, 230, 230))
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Container(
                margin: EdgeInsets.all(6),
                padding: EdgeInsets.only(bottom: 15),
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SucessFulRegistered()));
                    },
                    child: Text("Login",style: TextStyle(fontFamily: "Gilroy-Bold",fontSize: 15,color: Colors.white,),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      backgroundColor: Colors.black,
                    ),  
                  ),
                ),
              ),
              Container(child: Text("or"),),
              SizedBox(height: 12,),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton.icon(

                    icon: Icon(Icons.facebook),
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SucessFulRegistered()));
                    },
                    label: Text("Continue with Facebook",style: TextStyle(fontFamily: "Gilroy-Bold",fontSize: 15,color: Colors.white,),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      backgroundColor: Color.fromARGB(255, 0, 46, 132),
                    ),  
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 15),
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.g_mobiledata_outlined,color: Colors.black,),
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SucessFulRegistered()));
                    },
                    label: Text("Continue with Google",style: TextStyle(fontFamily: "Gilroy-Bold",fontSize: 15,color: Colors.black,),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      backgroundColor: Colors.white,
                    ),  
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 15),
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SucessFulRegistered()));
                    },
                    icon: Icon(Icons.apple,color: Colors.black,),
                    label: Text("Continue with Apple",style: TextStyle(fontFamily: "Gilroy-Bold",fontSize: 15,color: Colors.black,),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      backgroundColor: Colors.white,
                    ),  
                  ),
                ),
              ),
              SizedBox(height: 40,),
            ],
          ),
        ),
      ),
    );
  }
}