import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: About(),
    debugShowCheckedModeBanner: false,
  ));
}

//stless
class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background_AM.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.only(top: 30.0, left: 20),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(radius: 70, backgroundImage: AssetImage("images/About_Me.png"),),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Aprantar Das", style: TextStyle(fontSize: 25, color: Colors.white, fontFamily: "fonts/Roboto-Medium.ttf",fontWeight: FontWeight.bold),),
                      Text("Learner, Researcher, Teacher", style: TextStyle(fontSize: 20,color: Colors.yellow,fontFamily: "Creator",fontWeight: FontWeight.bold,),)
                    ],
                  )
                ],
              ),
              SizedBox(height: 45,),
              Padding(
                padding: EdgeInsets.only(left:50),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.school_outlined, size: 30,color: Colors.teal,),
                        SizedBox(width: 15,),
                        Text("B.sc in CSE", style: TextStyle(fontSize: 24,color: Colors.white,fontFamily: "Robotor"),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.note_add_rounded, size: 30,color: Colors.teal,),
                        SizedBox(width: 15,),
                        Text("Portfolio App", style: TextStyle(fontSize: 24,color:Colors.white,fontFamily: "Robotor"),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_pin, size: 30,color: Colors.teal,),
                        SizedBox(width: 15,),
                        Text("Dhanmondi, Dhaka", style: TextStyle(fontSize: 24,color: Colors.white,fontFamily: "Robotor"),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.email, size: 30,color: Colors.teal,),
                        SizedBox(width: 15,),
                        Text("aprantar15-14603@diu.edu.bd", style: TextStyle(fontSize: 24,color: Colors.white,fontFamily: "Robotor"),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.phone, size: 30,color: Colors.teal,),
                        SizedBox(width: 15,),
                        Text("+8801786338997", style: TextStyle(fontSize: 24,color: Colors.white,fontFamily: "Robotor"),),
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 60,),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text("I'm Aprantar Das passionate on Learning, Research and Teaching. My working field are 'Machine Learning', 'Cross Platform App Development(Using Flutter)' 'Teaching my university juniors and students in CSE field' ",
                  style: TextStyle(fontSize: 20,color: Colors.yellowAccent,fontFamily: "fonts/Roboto-Medium.ttf",fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 70,),
              Text("Copyrights @Aprantar Das", style: TextStyle(fontSize: 20,color: Colors.pinkAccent,fontFamily: "fonts/Roboto-Medium.ttf",fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}