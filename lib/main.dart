import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: new AppBar(
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
                color : Colors.green
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
                leading: Icon(Icons.settings),
              ),
            ),

            new InkWell(
              onTap: (){},
              child: ListTile(
                title : Text("Help"),
                leading: Icon(Icons.help),
              ),
            )

          ],
        ),
      ),
    );
  }
}