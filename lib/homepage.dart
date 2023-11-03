
import 'package:e_commerce_website/Notification_Page.dart';
import 'package:e_commerce_website/cart_page.dart';
import 'package:e_commerce_website/mobile_buyOption.dart';
import 'package:e_commerce_website/profile_page.dart';
import 'package:e_commerce_website/sandle.BuyOption.dart';
import 'package:e_commerce_website/shirt_buy_option.dart';
import 'package:e_commerce_website/shoes_buy_option.dart';
import 'package:flutter/material.dart';

class   BottomNaviagtionBarPage extends StatefulWidget {
  const BottomNaviagtionBarPage({super.key});

  @override
  State<BottomNaviagtionBarPage> createState() => _BottomNaviagtionBarPage();
}

class _BottomNaviagtionBarPage extends State<BottomNaviagtionBarPage> {
   
   int selectedtab=0;
   List pages=[
    Center(
      child: HomePage(),
    ),

    Center(
      child: CartPage(),
    ),

    Center(
      child: NotificationPage(),
    ),

    Center(
      child: ProfilePage(),
    ),
   ];

   chnageTab(int index){
    setState(() {
      selectedtab=index;
    });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
                 body :pages[selectedtab],
                 bottomNavigationBar: BottomNavigationBar(
                  
                  currentIndex: selectedtab,
                  onTap: (index) => chnageTab(index) ,
                  fixedColor: Colors.black,
                  items: [
                  BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),
                  label: "Home",),
                  BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Colors.black,),
                  label: "Cart"),
                  BottomNavigationBarItem(icon: Icon(Icons.notifications,color: Colors.black,),
                  label: "Notification"),
                  BottomNavigationBarItem(icon: Icon(Icons.person_outline,color: Colors.black,),
                  label: "Profile")
                 ]
                 )
    );
              
  }
}


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Card( 
            shadowColor:Colors.black ,
            elevation: 12,
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Scaffold(
                backgroundColor: Colors.white,
                body: SingleChildScrollView(
                  // scrollDirection: Axis.horizontal,
                  child: Column(children: [
                    SizedBox(height: 35,),
                    Container(
                      padding: EdgeInsets.only(left: 12,right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // SizedBox(width: 26,),
                          CircleAvatar(
                            radius:20,backgroundColor: Colors.black,
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.white,))),
                          // SizedBox(width: 220,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.black,size: 40,)),
                        ],
                      ),
                    ),
                    SizedBox(height: 24,),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(width: 20,),
                      
                            Container(
                              child: InkWell(
                              
                                onTap: (){
                                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AddToCartMobilePage()));
                                         
                                   
                                },
                                child: SizedBox(
                                height: 200,
                                width: 320,
                                child: Card(
                                
                                  child:Image(image: AssetImage("assets/images/sales.png"),fit:BoxFit.cover,width: double.infinity,) ,
                                  shadowColor: Colors.black,
                                  elevation: 50,
                                ),),
                              ),
                            ),
                                           ],
                        ),
                      )),
                      SizedBox(height: 19,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                            SizedBox(width: 26,),
                            Text("New Arrivals",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                             SizedBox(width: 140,),
                             Text("View All",style: TextStyle(fontSize: 20,color: Colors.grey),)
                        ],),
                      ),

                      SizedBox(height: 20,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8,right: 8),
                            child: InkWell(
                              onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AddToCartShirtPage()));
             
                              },
                              child: SizedBox(
                                width: 170,
                                height: 150,
                                child: Card(
                                  child:Image(image: AssetImage("assets/images/OIP.jpg"),fit:BoxFit.cover) ,
                                  shadowColor: Colors.black,elevation: 30,)
                              ),
                            ),
                          ),
                          SizedBox(width: 5,),
                          Padding(
                            padding: EdgeInsets.only(left: 8,right: 8),
                            child: InkWell(
                              onTap: (){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AddToCartPage()));
             
                              },
                              child: SizedBox(
                                width: 160,
                                height: 150,
                                child: Card(
                                  child:Image(image: AssetImage("assets/images/New Shoes.png"),fit:BoxFit.cover) ,
                                  shadowColor: Colors.black,elevation: 30,)
                              ),
                            ),
                          )
                        ],),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.only(left: 15,right: 15),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Text(" The Marc Jacobs",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700),),
                            SizedBox(width: 35,),
                            Text("The Marc Jacobs",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700),),
                          ]),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          // SizedBox(width: 18,),
                          Text("Traveler Tote",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w400),),
                          // SizedBox(width: 85,),
                          Text("Clean 90 Triple Sneakers",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w400),),
                        ]),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15,right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          // SizedBox(width: 6,),
                          Text("\$195.00",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700),),
                          // SizedBox(width: 150,),
                          Text("\$245.00",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700),),
                        ]),
                      ),

                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.only(right: 15,left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text(" Popular",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.w700),),
                          // SizedBox(width: 200,),
                          Text("View All",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.w700),),
                        ]),
                      ),
                      SizedBox(height: 12,),
                      SingleChildScrollView(
                        child: InkWell(
                          onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AddToCartsandlePage()));
             
                          },
                          child: Container(
                            padding: EdgeInsets.only(right: 15,left: 15),
                            child: SizedBox(
                              width: double.infinity,
                              height: 100,
                              child: Card(
                                shadowColor: Colors.black,
                                elevation: 30,
                                child: ListTile(leading: Card(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 27,
                                    child: Image(image: AssetImage("assets/images/OIP (1).jpg"),fit: BoxFit.cover,width: double.infinity,)
                                  ),
                                ),
                                title: Text("Gia Borghini",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w700)),
                                subtitle: Text("RWH Rosie 1 Sndals",style: TextStyle(fontSize: 16,color: Colors.black),),
                                trailing: Text(" \$740.00.",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w900)),
                                
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                    SizedBox(height: 100,)
                  ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );;
  }
}


