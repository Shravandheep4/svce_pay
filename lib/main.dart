import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//User-defined imports
import 'package:svce_pay/components/horizontal_listview.dart';
import 'package:svce_pay/components/products.dart';
import 'package:svce_pay/pages/login.dart';
import 'package:svce_pay/pages/cart.dart';


void main(){

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Login(),
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

    Widget imageCarousel = new Container(
      height: 200.0,
      child : new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/food/pl1.jpg'),
          AssetImage('assets/images/food/pl2.jpg'),
          AssetImage('assets/images/food/pl3.jpg'),
          AssetImage('assets/images/food/pl4.jpg'),
          AssetImage('assets/images/food/pl6.jpg')
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 2000),
        dotSize: 7.0,
        dotBgColor: Colors.transparent,
        indicatorBgPadding: 6.0,
        dotColor: Colors.white,
      )
    );


    return Scaffold(
      appBar: new AppBar(
        elevation: 5.0,
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        title : Text("SVCE pay"),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white),onPressed: (){} ),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white),onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
          } )
        ],
      ),

      drawer: new Drawer(
        child: new ListView(          
          children: <Widget>[
            //header
            UserAccountsDrawerHeader(
              accountName: Text('Shrvan Dheep'),
              accountEmail: Text('shravandheep4@gmail.com'),
              currentAccountPicture: GestureDetector(
                child : new CircleAvatar(
                  backgroundColor: Colors.black45,
                  child: Icon(Icons.person, color: Colors.white),
                )
              ),
              decoration: new BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
                  Colors.cyan,
                  Colors.greenAccent
                ])  
              ),

            ),
            
            //Drawer Contents

            DrawerOption(Icons.home, "Home Page", ()=>{}, Colors.red),

            DrawerOption(Icons.person, "My Account", ()=>{}, Colors.red),

            DrawerOption(Icons.shopping_basket, "My Orders", ()=>{}, Colors.red),

            DrawerOption(Icons.shopping_cart, "Shopping Cart", ()=>{
              Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()))
            }, Colors.red),

            DrawerOption(Icons.favorite, "Favorites", ()=>{}, Colors.red),

            Divider(),

            DrawerOption(Icons.settings, "Settings", ()=>{}, Colors.blue),
            DrawerOption(Icons.help, "Help", ()=>{}, Colors.blue),

          ],
        ),
      ),

      //Body

      body : new ListView(
        children: <Widget>[
          
          imageCarousel,

          new Padding(padding: const EdgeInsets.all(10.0),child: new Text("Stalls")),

          new Stalls(),

          new Padding(padding: const EdgeInsets.all(8.0),child: new Text("Frequenctly bought")),

          new Container(
            height: 250.0,
            child: Products(),
          )
        ],
      )
    );
  }
}


class DrawerOption extends StatelessWidget {

  final String text;
  final IconData icon;
  final Function onTap;
  final Color color;

  DrawerOption(
    this.icon,
    this.text,
    this.onTap,
    this.color
  );

  @override
  Widget build(BuildContext context) {

    return InkWell(
      splashColor: Colors.greenAccent,
      onTap: onTap,
      child: ListTile(
        title : Text(text, style: TextStyle(fontSize: 17.0)),
        leading: Icon(icon, color: color),
      ),
    );

  }
}