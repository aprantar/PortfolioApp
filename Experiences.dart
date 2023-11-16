import 'package:flutter/material.dart';

class Experiences extends StatelessWidget {
  const Experiences({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MY Experiences"),
        centerTitle: true,
        backgroundColor: Colors.black87,
        foregroundColor: Colors.yellowAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/Skills_background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildExperienceTile(
                company: "MABS Coaching Center",
                icon: Icons.work,
                role: "Science Teacher",
                years: "2018 - 2020",
                about: "Renowned Coaching Center in Dhaka city located at Farmgate.",
              ),
              _buildExperienceTile(
                company: "Usha Pharmacy",
                icon: Icons.work,
                role: "Owner as Role",
                years: "2015 - Present",
                about: "A Model Pharmacy registered by BFC located at Shibchar, Madaripur",
              ),
              _buildExperienceTile(
                company: "Daffodil International University",
                icon: Icons.work,
                role: "Lab Prefect & Researcher",
                years: "2023-Present",
                about: "One of the top University among BD Private Universities",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExperienceTile({
    required String company,
    required IconData icon,
    required String role,
    required String years,
    required String about,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 8),
      leading: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.teal, // Change the color to teal
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: Colors.black,
        ),
      ),
      title: Text(
        company,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(role, style: TextStyle(fontSize: 24, color: Colors.black54)),
          Text(
            years,
            style: TextStyle(fontSize: 16, color: Colors.teal),
          ),
          SizedBox(height: 8), // Add spacing between role/years and about
          Text(
            about,
            style: TextStyle(fontSize: 16, color: Colors.blueGrey),
          ),
        ],
      ),
    );
  }
}