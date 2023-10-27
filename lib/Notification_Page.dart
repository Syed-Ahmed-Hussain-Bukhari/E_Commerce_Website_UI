
import 'package:e_commerce_website/homepage.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

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
                  child: Icon(Icons.menu,color: const Color.fromARGB(255, 0, 0, 0),)),
                SizedBox(width: 23,),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  Text("Notification",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black),),
                   SizedBox(height: 12,),
                  Notification_option("Ahmed It is a long established fact that a reader will be distracted by the readable content of  a page. ", "2 hours ago","assets/images/f1.jpg"),
                  draw_line(),
                  Notification_option("Hamza There are many variations of passage of loream Ipsum available.", "2 hours ago","assets/images/f2.jpg"),
                  draw_line(),
                  Notification_option("Saad If you are going to use a passage of loream Ipsum,you need to br sure there isn't anything embrassing.", "6 hours ago","assets/images/f3.jpg"),
                  draw_line(),
                  Notification_option("Jawed It is a long established fact that a reader will be distracted by the readable content of  a page. ", "3 hours ago","assets/images/f4.jpg"),
                  draw_line(),
                  Notification_option("Ali There are many variations of passage of loream Ipsum available.", "1 days  ago","assets/images/f5.jpg"),
                  draw_line(),
                  Notification_option("Wasim If you are going to use a passage of loream Ipsum,you need to br sure there isn't anything embrassing.", "2 hours ago","assets/images/f6.jpg"),
                  draw_line(),
                  Notification_option("Sonu It is a long established fact that a reader will be distracted by the readable content of  a page. ", "2 days ago","assets/images/f7.jpg"),
                  draw_line(),
                  Notification_option("Arsalan There are many variations of passage of loream Ipsum available.", "4 days ago","assets/images/f8.jpg"),
                  draw_line(),
                  Notification_option("Saqib If you are going to use a passage of loream Ipsum,you need to br sure there isn't anything embrassing.", "4 hours ago","assets/images/f1.jpg"),
                  draw_line(),
                  Notification_option("Shayan It is a long established fact that a reader will be distracted by the readable content of  a page. ", "2 hours ago","assets/images/f2.jpg"),
                  draw_line(),
                  Notification_option("Iqbal There are many variations of passage of loream Ipsum available.", "3 hours ago","assets/images/5.jpg"),
                 
                ],
              ),
            ),
          
              ),
          ),
        ),
      ));
  }
}


Notification_option(String data,String time,String image){
  return Container(
    child: ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage(image),),
          title: Text(data,style: TextStyle(fontSize: 23,fontWeight: FontWeight.w400),),
          subtitle: Text(time,style: TextStyle(color: Colors.grey),),
    ),
  );
}

draw_line(){

  return Padding(
    padding: EdgeInsets.only(left: 2,right: 12),
    child: Divider(
      height: 10,
      thickness:1,
      indent: 10,
      color: Colors.grey,
    ),
  );
}