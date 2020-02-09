import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'favourites.dart';
import 'messages.dart';
import 'cart.dart';
import 'recommendation.dart';
import 'map.dart';
import 'profile.dart';
import 'aboutus.dart';
import 'logout.dart';
import 'package:shop_app/tools/Store.dart';
import 'items_details.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  BuildContext context;
  @override
  Widget build(BuildContext context){
    this.context = context;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Food App"),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.favorite,color: Colors.white,), 
          onPressed: ()
          {
            Navigator.of(context).push(new CupertinoPageRoute(builder:(BuildContext context){
              return new Girliesfavourites();
            }));
          }),
          new Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              new IconButton(icon: new Icon(Icons.chat,color: Colors.white,), onPressed: ()
              {
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context)
                {
                  return new Girliesmessages();
                }));
              }),
              new CircleAvatar(
                radius: 8.0,
                backgroundColor: Colors.red,
                child: new Text("0",style: new TextStyle(color: Colors.white,fontSize: 12.0),),
              )
            ],
          )
        ],
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new Flexible(child: new GridView.builder(gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: storeItems.length,
              itemBuilder: (BuildContext context, int index){
                return new GestureDetector(
                  onTap: ()
                  {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => new ItemDetails(
                            ItemImage: storeItems[index].ItemImage,
                            itemName: storeItems[index].itemName,
                            itemPrice: storeItems[index].itemPrice,
                            itemRating: storeItems[index].itemRating,
                        )));
                  },
                  child: new  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        alignment: FractionalOffset.topLeft,
                        children: <Widget>[
                          new Stack(
                            alignment: FractionalOffset.bottomCenter,
                            children: <Widget>[
                              new Container(
                                decoration: new BoxDecoration(
                                    image: new DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        image: new NetworkImage(storeItems[index].ItemImage))
                                ),
                              ),
                              new Container(
                                height: 35.0,
                                color: Colors.black.withAlpha(100),
                                child:  new Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      new Text("${storeItems[index].itemName.substring(0,7)}...",style: new TextStyle(fontWeight:FontWeight.w700,fontSize: 16.0,color:Colors.white ),
                                      ),
                                      new Text("${storeItems[index].itemPrice}៛",style: new TextStyle(color: Colors.red[500],
                                          fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Container(
                                height: 30.0,
                                width: 60.0,
                                decoration: new BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: new BorderRadius.only(
                                        topRight:new Radius.circular(5.0),
                                        bottomRight: new Radius.circular(5.0))
                                ),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    new Icon(
                                      Icons.star,
                                      color: Colors.blue,
                                      size: 20.0,
                                    ),
                                    new Text("${storeItems[index].itemRating}",
                                      style: new TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              new IconButton(icon: Icon(
                                Icons.favorite_border,
                                color: Colors.blue,
                              ),
                                  onPressed: (){})
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ))
          ],
        )
      ),
      floatingActionButton: new Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          new FloatingActionButton(onPressed: ()
            {
              Navigator.of(context).push(new CupertinoPageRoute(
                  builder: (BuildContext context)
                  {
                    return new GirliesCart();
                  }));
            },
          child: new Icon(Icons.shopping_cart),

          ),
          new CircleAvatar(
            radius: 10.0,
            backgroundColor: Colors.red,
            child: new Text("0",style: new TextStyle(color: Colors.white,fontSize: 12.0),),
          )
        ],
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(accountName: new Text("Eng Seakpheng"),
                accountEmail: new Text("pheng0498@gmail.com"),
            currentAccountPicture:new CircleAvatar(backgroundColor: Colors.white,
            child: Icon(Icons.account_circle,
              size: 70,
              ),
            ),),

            // Home Screen
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(Icons.home,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: new Text("Home"),
              onTap:()
              {
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context)
                    {
                      return new MyHomePage();
                    }));
              },
            ),

            //Recommendation
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(Icons.lightbulb_outline,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: new Text("Recommedation"),
              onTap: ()
              {
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context)
                    {
                      return new Recommendation();
                    }));
              },
            ),


            //Profile Settings
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(Icons.person,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: new Text("Profile Settings"),
              onTap: ()
              {
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context)
                    {
                      return new Profile();
                    }));
              },
            ),

            //Map
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(Icons.map,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: new Text("Map"),
              onTap: ()
              {
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context)
                    {
                      return new Map();
                    }));
              },
            ),
            new Divider(),
            new ListTile(
              trailing: new CircleAvatar(
                child: new Icon(Icons.help,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: new Text("About Us"),
              onTap: ()
              {
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context)
                    {
                      return new AboutUs();
                    }));
              },
            ),
            new ListTile(
              trailing: new CircleAvatar(
                child: new Icon(Icons.exit_to_app,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: new Text("Logout"),
              onTap: ()
              {
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context)
                    {
                      return new Logout();
                    }));
              },
            ),
          ],
        ),
      ),
      );
  }
}
