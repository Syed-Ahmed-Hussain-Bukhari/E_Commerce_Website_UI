
import 'package:e_commerce_website/homepage.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        padding: EdgeInsets.all(12),
        child: Card(
          shadowColor: Colors.black,
          elevation: 40,
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              toolbarHeight: 84,
              backgroundColor: Colors.white,
              leading: IconButton(
                icon:Icon(Icons.arrow_circle_left_outlined,color: Colors.black,),
                onPressed: (){
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNaviagtionBarPage()));
                
                },
                ),
              actions: [
                Icon(Icons.settings,color: Colors.black,),
                SizedBox(width:23),
                
              ],
            ),
            body: Column(
              children: [
                SizedBox(height: 40,),
                SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Card(
                      shadowColor: Colors.black,
                      elevation: 30,
                      child: ListTile(
                        leading: CircleAvatar(backgroundImage: AssetImage("assets/images/f4.jpg"),),
                       title: Text("Ahmed",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w400),),
                       subtitle: Text("Ahmed441@gmail.com",style: TextStyle(color: Colors.grey),),
                    
                  
                      ),
                    ),
                  ),
                ),

                SingleChildScrollView(
                  child: SizedBox(
                    width: double.infinity,
                    height: 550,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Card(
                        shadowColor: Colors.black,
                        elevation: 30,
                
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              ListTile(
                                leading:Icon(Icons.person,color: Colors.black,),
                                title: Text("Personal Details",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w400),),
                                trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,),
                              ),
                        
                              ListTile(
                                leading:Icon(Icons.badge_rounded,color: Colors.black,),
                                title: Text("My Order",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w400),),
                                trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,),
                              ),
                        
                              ListTile(
                                leading:Icon(Icons.heart_broken,color: Colors.black,),
                                title: Text("My Favourites",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w400),),
                                trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,),
                              ),
                        
                              ListTile(
                                leading:Icon(Icons.fire_truck,color: Colors.black,),
                                title: Text("Shipping Address",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w400),),
                                trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,),
                              ),
                        
                              ListTile(
                                leading:Icon(Icons.card_travel_rounded,color: Colors.black,),
                                title: Text("My Card",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w400),),
                                trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,),
                              ),
                        
                              ListTile(
                                leading:Icon(Icons.person,color: Colors.black,),
                                title: Text("Settings",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w400),),
                                trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,),
                              ),
                          
                              SizedBox(height: 30,),
                              Container(
                                padding: EdgeInsets.all(12),
                                child: Card(
                                  shadowColor: Colors.black,
                                  elevation: 30,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        SizedBox(height: 12,),
                                        ListTile(
                                         leading:Icon(Icons.expand_circle_down_rounded,color: Colors.black,),
                                         title: Text("FAQS",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w400),),
                                        trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,),
                                                            ),
                                  
                                         ListTile(
                                             leading:Icon(Icons.privacy_tip_rounded,color: Colors.black,),
                                           title: Text("privacy Policy",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w400),),
                                             trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,),
                                                            ),
                                  
                                                            ListTile(
                                                leading:Icon(Icons.settings,color: Colors.black,),
                                                              title: Text("Settings",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w400),),
                                                              trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,),
                                                            ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                        
                               
                            
                            
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



