

import 'package:e_commerce_website/cart_page.dart';
import 'package:e_commerce_website/homepage.dart';
import 'package:flutter/material.dart';

class AddToCartShirtPage extends StatefulWidget {
  const AddToCartShirtPage({super.key});

  @override
  State<AddToCartShirtPage> createState() => _AddToCartShirtPageState();
}

class _AddToCartShirtPageState extends State<AddToCartShirtPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Card(
            shadowColor: Colors.black,
            elevation: 35,
            child: Scaffold(
              backgroundColor: Colors.white,
            appBar: AppBar(
              toolbarHeight: 80,
              backgroundColor: Colors.white,
              leading: IconButton(
                icon:Icon(Icons.arrow_circle_left_outlined,color: Colors.black,),
                onPressed: (){
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNaviagtionBarPage()));
                
                },
                ),
              actions: [
                SizedBox(width: 23,),
                CircleAvatar(
                  backgroundColor: Colors.white12,
                  child: Icon(Icons.lock,color: const Color.fromARGB(255, 0, 0, 0),)),
                SizedBox(width: 23,),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  SizedBox(
                    width: double.infinity,
                    height: 230,
                    child:Image(image: AssetImage("assets/images/OIP.jpg",),fit:BoxFit.fill),
                  ),
                  SizedBox(height: 12,),

                  Container(
                    padding: EdgeInsets.all(12),
                    width: double.infinity,
                    height: 550,
                    child: Card(
                      shadowColor: Colors.black,
                      elevation: 30,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(12),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                     Text("Axel Arigato",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,)),
                                     SizedBox(width:150,),
                                      Container(
                                        margin: EdgeInsets.all(4),
                                        padding: EdgeInsets.all(5),
                                        color: Colors.grey,
                                        child:Text("- 1 +",style: TextStyle(fontSize: 23,color: Colors.black)),
                                      )  
                                            
                              ],),
                            ),
                          ),
                          Container(
                          padding: EdgeInsets.all(8),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                     Text(" Clean 90 Triole Sneakers",style: TextStyle(fontSize: 17,color: Colors.grey)),
                                     SizedBox(width: 8,),
                                    
                                       Text("Available in Stock",style: TextStyle(fontSize: 18,color: Colors.black)),
                              ],),
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.only(left: 12),
                            child: Row(children: [
                              Icon(Icons.star,color: Colors.amber,),
                              Icon(Icons.star,color: Colors.amber,),
                              Icon(Icons.star,color: Colors.amber,),
                              Icon(Icons.star,color: Colors.amber,),
                              Icon(Icons.star,color: Colors.amber,),
                              Text("  (270 Review)",style: TextStyle(fontSize: 17,color: Colors.grey)),
                                 
                            ],),
                          ),
                          SizedBox(height: 30,),
                          Row(
                            children: [
                                Container(
                                  padding: EdgeInsets.all(4),
                                  child: Text("Size",style: TextStyle(fontSize: 23,color: Colors.black,fontWeight: FontWeight.bold))),
                                      
                            ],
                          ) ,
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(4),
                                child: CircleAvatar(
                                  child: Text("39"),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(4),
                                child: CircleAvatar(
                                  child: Text("39.5"),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(4),
                                child: CircleAvatar(
                                  child: Text("40"),
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.all(4),
                                child: CircleAvatar(
                                  child: Text("40.5"),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(4),
                                child: CircleAvatar(
                                  backgroundColor: Colors.black,
                                  child: Text("41"),
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,)
                              
                            ],
                          ),
                          SizedBox(height: 30,),
                          Row(
                            children: [
                                Container(
                                  padding: EdgeInsets.all(6),
                                  child: Text("Description",style: TextStyle(fontSize: 23,color: Colors.black,fontWeight: FontWeight.bold))),
                                      
                            ],
                          ) ,

                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                  Container(
                                    padding: EdgeInsets.all(12),
                                    child: Text("""Engineered to crush any movement-
based workout,these on sneakers enhance 
the label's original cloud sneaker 
with cutting edge technologies for a pair.""",style: TextStyle(fontSize: 18,color: Colors.grey,))),
                                        
                              ],
                            ),
                          ) ,

                        SizedBox(height: 30,),
                        ListTile(
                          title: Text("Total Price"),
                          subtitle: Text("\$195.00",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),
                                      ),
                          trailing:ElevatedButton(
                            
                            onPressed: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNaviagtionCartPage()));
                            },
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Text("Add to cart",style: TextStyle(fontFamily: "Gilroy-Bold",fontSize: 20,color: Colors.white,),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              backgroundColor: Colors.black,
                            ),  
                          ), 
                        )
                                ],
                      )
                    ),
                  )
                  
                ],
              ),
            ),
          
              ),
          ),
        ),
      ));
  }
}



