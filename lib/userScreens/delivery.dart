import 'package:flutter/material.dart';
class GirliesDelivery extends StatefulWidget {
  @override
  _GirliesDeliveryState createState() => _GirliesDeliveryState();
}

class _GirliesDeliveryState extends State<GirliesDelivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Delivery"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text("My Delivery",
          style: new TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
