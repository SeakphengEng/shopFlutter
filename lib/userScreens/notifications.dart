import 'package:flutter/material.dart';
class GirliesNotifications extends StatefulWidget {
  @override
  _GirliesNotificationsState createState() => _GirliesNotificationsState();
}

class _GirliesNotificationsState extends State<GirliesNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Order Notifiaction"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text("My Notifications",
        style: new TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
