import 'package:flutter/material.dart';

//User defined packages

import 'package:svce_pay/components/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 5.0,
        backgroundColor: Colors.green,
        //centerTitle: true,
        title : Text("Cart", style: TextStyle(fontSize: 30.0),),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white),onPressed: (){} ),
        ],
      ),

      body : new CartProducts(),

      bottomNavigationBar: new Container(
        color: Colors.white12,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text("Total : ", style: TextStyle(fontSize: 15.0, color: Colors.black87),  ),
                subtitle: new Text("\$100", style: TextStyle(fontSize: 20.0),),
              ),
            ),

            Expanded(
              child: new MaterialButton(
                onPressed: (){},
                child: new Text("Check out", style: TextStyle(color: Colors.white),),
                color: Colors.red,
                height: 50.0,
                elevation: 0.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}