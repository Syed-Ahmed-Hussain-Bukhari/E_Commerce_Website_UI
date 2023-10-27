 import 'package:e_commerce_website/Notification_Page.dart';
import 'package:e_commerce_website/homepage.dart';
import 'package:e_commerce_website/profile_page.dart';
import 'package:flutter/material.dart';


class   BottomNaviagtionCartPage extends StatefulWidget {
  const BottomNaviagtionCartPage({super.key});

  @override
  State<BottomNaviagtionCartPage> createState() => _BottomNaviagtionCartPage();
}

class _BottomNaviagtionCartPage extends State<BottomNaviagtionCartPage> {
   
   int selectedtab=1;
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






class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Card(
          shadowColor: Colors.black,
          elevation: 50,
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              backgroundColor: Colors.white,
            appBar: AppBar(

              toolbarHeight: 94,
              backgroundColor: Colors.white,
              leading: IconButton(
                icon:Icon(Icons.arrow_circle_left_outlined,color: Colors.black,size: 34,),
                onPressed: (){
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNaviagtionBarPage()));
                
                },
                ),
         
            ),
            body: SingleChildScrollView(
              child: Column(children: [
                SizedBox(height: 35,),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(children: [
                    SizedBox(width: 5,),
                    Text("My Order",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                   SizedBox(width: 32,),
                    ElevatedButton(
                      onPressed: (){
                        
                      },
                      child: Text("Ongoing",style: TextStyle(fontFamily: "Gilroy-Bold",fontSize: 17,color: Colors.grey,),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.white,
                      ),  
                    ),
                      SizedBox(width: 18,),
                      ElevatedButton(
                      onPressed: (){
                        
                      },
                      child: Text("complated",style: TextStyle(fontFamily: "Gilroy-Bold",fontSize: 17,color: Colors.white,fontWeight: FontWeight.w300),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.black,
                      ))
                  ],),
                ),
                SizedBox(height: 50,),
                
                Container(
                child: Card(
                  shadowColor: Colors.black,
                  elevation: 30,
                  child: ListTile(
                      leading: CircleAvatar(backgroundImage: AssetImage("assets/images/New Shoes.png"),
                      radius: 30,
                      ),
                      title: Text("Shoes",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black),),
                      subtitle: Text("""
Quality:1
Size:42
Color:brown
                      """,style: TextStyle(fontSize:17,color: Colors.grey),),
                      trailing: Text("120.00 Rs.",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black),),
                     ),
                ),
                    
              ),

              Container(
                child: Card(
                  shadowColor: Colors.black,
                  elevation: 30,
                  child: ListTile(
                      leading: CircleAvatar(backgroundImage: AssetImage("assets/images/Mobile(1).jpg"),
                      radius: 30,
                      ),
                      title: Text("iphone",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black),),
                      subtitle: Text("""
Quality:1
Size:42
Color:brown
                      """,style: TextStyle(fontSize:17,color: Colors.grey),),
                      trailing: Text("20,000.00 Rs.",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black),),
                     ),
                ),
                    
              ),

              Container(
                child: Card(
                  shadowColor: Colors.black,
                  elevation: 30,
                  child: ListTile(
                      leading: CircleAvatar(backgroundImage: AssetImage("assets/images/headPhone.jpg"),
                      radius: 30,
                      ),
                      title: Text("HeadPhone",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black),),
                      subtitle: Text("""
Quality:1
Size:42
Color:black
                      """,style: TextStyle(fontSize:17,color: Colors.grey),),
                      trailing: Text("320.00 Rs.",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black),),
                     ),
                ),
                    
              ),
                        
              ],),
            ),
            ),
          ),
        ),
      ),
    );
  }
}