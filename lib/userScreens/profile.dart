import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Profile"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text("Your Profile",
          style: new TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
