// import 'package:e_commerce_website/successfull_message.dart';
// import 'package:flutter/material.dart';

// class SignUpPage extends StatelessWidget {
//   const SignUpPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "E-Commerce Website",
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
      
//       body:Container(
//         padding: EdgeInsets.all(23),
//         width: double.infinity,
//         height: double.infinity,
//         child: Card(
//           borderOnForeground: true,
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
          
//                 SizedBox(height: 60,),
//                 Text("Fashions",textDirection: TextDirection.ltr,textAlign: TextAlign.left,style: TextStyle(fontSize:20,color:Colors.black ),),
//                 Text("My Life My Style",textDirection: TextDirection.ltr,style: TextStyle(fontSize:18,color:Colors.grey ),),
//                 SizedBox(height: 70,),
//                 Text("Sign Up",textDirection: TextDirection.ltr,style: TextStyle(fontSize:20,color:Colors.black ),),
//                 Text("Craete on new account",textDirection: TextDirection.ltr,style: TextStyle(fontSize:15,color:Colors.grey ),),
//                 SizedBox(height: 45,),
//                 Text("User Name",textDirection: TextDirection.ltr,style: TextStyle(fontSize:20,color:Colors.black ),),
//                 Padding(
//                   padding: EdgeInsets.all(8),
//                   child: TextField()),
//                   SizedBox(height: 10,),
//                 Text("Email",textDirection: TextDirection.ltr,style: TextStyle(fontSize:20,color:Colors.black ),),
//                 Padding(
//                   padding: EdgeInsets.all(8),
//                   child: TextField()),
//                   SizedBox(height: 10,),
//                 Text("Password",textDirection: TextDirection.ltr,style: TextStyle(fontSize:20,color:Colors.black ),),
//                 Padding(
//                   padding: EdgeInsets.all(8),
//                   child: TextField()),
//                   SizedBox(height: 10,),
//                 Text("Confirm Password",textDirection: TextDirection.ltr,style: TextStyle(fontSize:20,color:Colors.black ),),
//                 Padding(
//                   padding: EdgeInsets.all(8),
//                   child: TextField()),
//                   SizedBox(height: 10,),
//                 Text("By creating an account you have to",textDirection: TextDirection.ltr,style: TextStyle(fontSize:20,color:Colors.black ),),
//                 Text("agree with our them & condication.",textDirection: TextDirection.ltr,textAlign: TextAlign.center,style: TextStyle(fontSize:20,color:Colors.black ),),
                
//                   SizedBox(height: 15,),
//                   ElevatedButton(onPressed: (){
//                     Navigator.push(context, MaterialPageRoute(builder: (context)=>SucessFulRegistered()));
//                   },
//                   style:ButtonStyle(),
//                    child: Text("login"),
//                    ),
//               ],
//             ),
//           ),
//         ),
//       ),),
//     );
//   }
// }


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
                        fontWeight: FontWeight.w400),
                  )),
              SizedBox(height: 30,),
              Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Signup",
                    style: TextStyle(
                      fontFamily: "Gilroy-Black",
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
                      fontSize: 17,
                    ),
                  )),
              Container(
                height: 30,
                child: const TextField(
                  // textAlign: TextAlign.start,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(right: 50, bottom: 21),
                    hintText: "your name",
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
                      fontSize: 17,
                    ),
                  )),
              Container(
                height: 30,
                child: const TextField(
                  obscureText: false,
                  // textAlign: TextAlign.start,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(right: 50, bottom: 21),
                    hintText: "your email address",
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
                      fontSize: 17,
                    ),
                  )),
              Container(
                height: 30,
                child: const TextField(
                  obscureText: true,
                  // textAlign: TextAlign.start,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(right: 50, bottom: 21),
                    hintText: "your password",
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
                      fontSize: 17,
                    ),
                  )),
              Container(
                height: 30,
                child: const TextField(
                  obscureText: true,
                  // textAlign: TextAlign.start,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(right: 50, bottom: 21),
                    hintText: "your password",
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
                child: Row(children: [
                  Icon(
                    Icons.check_box_outline_blank,
                    color: Colors.grey,
                  ),
                  Text(
                    """  By creating an account you have to agree
   with our terms and condition.
                    """,
                    style: TextStyle(color: Colors.grey,fontSize: 16),
                  ),
                ]),
              ),
              // Container(
              //     child: Text("to agree with our terms and conditions",
              //         style: TextStyle(color: Colors.grey))),
              SizedBox(
                height: 40,
              ),
              Container(
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
            ],
          ),
        ),
      ),
    );
  }
}