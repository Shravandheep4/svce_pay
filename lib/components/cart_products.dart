import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  
  
  var productsOnCart = [
    {
      "name": "Blazer",
      "picture" : "assets/images/products/blazer1.jpeg",
      "price": 50,
      "quantity" : 1
    },

    {
      "name": "Red Dress",
      "picture" : "assets/images/products/dress1.jpeg",
      "price": 50,
      "quantity" : 3
    }
  ];

  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productsOnCart.length,
      itemBuilder: (context, index){
        return SingleCartProduct(
          prodName: productsOnCart[index]["name"],
          prodPicture: productsOnCart[index]["picture"],
          prodQuant: productsOnCart[index]["quantity"],
          prodPrice: productsOnCart[index]["price"]
        );
      },
    );
  }
}


class SingleCartProduct extends StatelessWidget {
  
  final prodName;
  final prodPicture;
  final prodPrice;
  final prodQuant;

  SingleCartProduct({
    this.prodName,
    this.prodPicture,
    this.prodPrice,
    this.prodQuant
  });
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: ListTile(
        leading: Container(
          height: 80.0,
          width: 80.0,
          child: Image.asset(prodPicture,fit: BoxFit.fill,),
        ),
        contentPadding: EdgeInsets.all(10.0),
        title: new Text(prodName),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(2.0), child: Text("Quantity:")),
                Padding(padding: EdgeInsets.all(2.0), child: Text("${prodQuant}", style: TextStyle(color: Colors.pink, fontSize: 18.0),)),
                
                Padding(padding: const EdgeInsets.fromLTRB(14.0, 2.0, 2.0, 2.0), child: Text("Price:")),
                Padding(padding: const EdgeInsets.all(2.0), child: Text("\$${prodPrice}", style: TextStyle(color: Colors.pink, fontSize: 18.0),))
              ],
            )
          ],
        ),
        trailing: new Column(
          children: <Widget>[
            new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
            new Text("${prodQuant}"),
            new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),
          ],
        ),
      ),
    );
  }
}