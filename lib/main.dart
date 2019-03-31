import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main(){

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home : HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    Widget image_carousel = new Container(
      height: 200.0,
      child : new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/c1.jpg'),
          AssetImage('assets/images/m1.jpeg'),
          AssetImage('assets/images/m2.jpg'),
          AssetImage('assets/images/w1.jpeg'),
          AssetImage('assets/images/w3.jpeg'),
          AssetImage('assets/images/w4.jpeg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      )
    );


    return Scaffold(
      appBar: new AppBar(
        elevation: 5.0,
        backgroundColor: Colors.green,
        //centerTitle: true,
        title : Text("SVCEpay"),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white),onPressed: (){} ),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white),onPressed: (){} )
        ],
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header

            new UserAccountsDrawerHeader(
              accountName: Text('Shrvan Dheep'),
              accountEmail: Text('shravandheep4@gmail.com'),
              currentAccountPicture: GestureDetector(
                child : new CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  child: Icon(Icons.person, color: Colors.white),
                )
              ),
              decoration: new BoxDecoration(
                color : Colors.pink
              ),

            ),
            
            //Body

            new InkWell(
              onTap: (){},
              child: ListTile(
                title : Text("Home Page"),
                leading: Icon(Icons.home),
              ),
            ),

            new InkWell(
              onTap: (){},
              child: ListTile(
                title : Text("My Account"),
                leading: Icon(Icons.person),
              ),
            ),


            new InkWell(
              onTap: (){},
              child: ListTile(
                title : Text("My Orders"),
                leading: Icon(Icons.shopping_basket),
              ),
            ),


            new InkWell(
              onTap: (){},
              child: ListTile(
                title : Text("Stalls"),
                leading: Icon(Icons.dashboard),
              ),
            ),


            new InkWell(
              onTap: (){},
              child: ListTile(
                title : Text("Favourites"),
                leading: Icon(Icons.favorite),
              ),
            ),

            new Divider(),

            new InkWell(
              onTap: (){},
              child: ListTile(
                title : Text("Settings"),
                leading: Icon(Icons.settings, color: Colors.blue,),
              ),
            ),

            new InkWell(
              onTap: (){},
              child: ListTile(
                title : Text("Help"),
                leading: Icon(Icons.help, color: Colors.green,),
              ),
            )

          ],
        ),
      ),

      body : new ListView(
        children: <Widget>[
          image_carousel
        ],
      )
    );
  }
}