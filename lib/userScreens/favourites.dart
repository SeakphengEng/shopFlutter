import 'package:flutter/material.dart';
class Girliesfavourites extends StatefulWidget {
  @override
  _GirliesfavouritesState createState() => _GirliesfavouritesState();
}

class _GirliesfavouritesState extends State<Girliesfavourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("My Favourites"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text("My Favourites",style: new TextStyle(fontSize: 25.0),),
      ),
    );
  }
}
