import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Skills",style: TextStyle(fontFamily: 'Roboto', fontSize: 30),),
        centerTitle: true,
        backgroundColor: Colors.black87,
        foregroundColor: Colors.pinkAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background_AM.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSkillTile(Icons.code, "C, Python, Java, Dart"),
              _buildSkillTile(Icons.computer, "Android Studio, VS Code, Codeblocks"),
              _buildSkillTile(Icons.design_services, "XML, Flutter, Django"),
              _buildSkillTile(Icons.layers, "Architecture: Components"),
              _buildSkillTile(Icons.code, "Version Control: Git"),
              _buildSkillTile(Icons.api, "API Integration: Retrofit"),
              _buildSkillTile(Icons.bug_report, "Testing: Debugging"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkillTile(IconData icon, String text) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.teal,
      ),
      title: Text(text, style: TextStyle(fontSize: 24, color: Colors.white)),
    );
  }
}