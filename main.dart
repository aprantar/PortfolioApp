import 'package:flutter/material.dart';
import 'package:my_project/Skills.dart';
import 'package:my_project/Experiences.dart';
import 'package:my_project/About.dart';
import 'package:my_project/Certificates.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://flutter.dev');


Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aprantar Portfolio',
      debugShowCheckedModeBanner: false,
      home: const HomeActivity(),


    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
              "Aprantar Das",
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily: 'Roboto',color: Colors.white)
          ),
          centerTitle: true,
          backgroundColor: Colors.black87,
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.person, color: Colors.tealAccent),
                text: 'About',
              ),
              Tab(
                icon: Icon(Icons.star, color: Colors.tealAccent),
                text: 'Skills',
              ),
              Tab(
                icon: Icon(Icons.work, color: Colors.tealAccent),
                text: 'Experiences',
              ),
              Tab(
                icon: Icon(Icons.card_membership, color: Colors.tealAccent),
                text: 'Certificates',
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.black54, // Set the background color of the drawer to black
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: Colors.black87,
                  ),
                  child: UserAccountsDrawerHeader(
                    accountName: Text(
                      "Aprantar Das",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    accountEmail: Text(
                      "aprantar15-14603@diu.edu.bd",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    currentAccountPicture: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.asset(
                        "images/DrawerHeader.jpg",
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home,color: Colors.pink,), title: Text('Home', style: TextStyle(color: Colors.white),),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.settings,color: Colors.pink), title: Text('Settings', style: TextStyle(color: Colors.white),),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.mail,color: Colors.pink), title: Text('E-Mail', style: TextStyle(color: Colors.white),),
                  onTap: () {
                   launch("https://mail.google.com/mail/u/1/?ogbl#inbox");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.facebook,color: Colors.pink), title: Text('Facebook', style: TextStyle(color: Colors.white),),
                  onTap: () {
                    launch("https://www.facebook.com/aprantar.das/about");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.linked_camera,color: Colors.pink), title: Text('LinkedIn', style: TextStyle(color: Colors.white),),
                  onTap: () {
                    launch("https://www.linkedin.com/in/aprantar-das-073a63256/");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.logout,color: Colors.pink), title: Text('Log-Out', style: TextStyle(color: Colors.white),),
                  onTap: () {},
                ),
                // Add more ListTile items for other navigation options with white text color
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            About(),
            Skills(),
            Experiences(),
            Certificates(),
          ],
        ),
      ),
    );
  }
}