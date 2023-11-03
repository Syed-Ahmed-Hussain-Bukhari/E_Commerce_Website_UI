

import 'package:e_commerce_website/homepage.dart';
import 'package:flutter/material.dart';

class SucessFulRegistered extends StatelessWidget {
  const SucessFulRegistered({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "E-Commerce Website",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Card(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 200,),
                  Container(
                    child: Icon(Icons.check_circle_outline,color: Colors.green,size: 100,),
                  ),
                  SizedBox(height: 50,),
                  Text("Sucessful!",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
                  SizedBox(height: 8,),
                  Text("You have Sucessfully registered in",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.grey,),),
                  Text("our app start working in it.",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.grey,),),
                 SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                 Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,

                  child: ElevatedButton(onPressed: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNaviagtionBarPage()));
                             
                   },
                    child: Text("Start Shopping"),
                    style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    backgroundColor: Colors.black,
                  ), 
                  ),
                 ),
                 SizedBox(height: 70,)
                           
                ],
                    
              ),
            ),
          ),
        ),
      ),
    );
  }
}