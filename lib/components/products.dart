import 'package:flutter/material.dart';
import 'package:svce_pay/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  var productList = [
    {
      "name": "Blazer",
      "picture" : "assets/images/products/blazer1.jpeg",
      "price": 50,
    },

    {
      "name": "Red Dress",
      "picture" : "assets/images/products/dress1.jpeg",
      "price": 50,
    },

    {
      "name": "Some dress",
      "picture" : "assets/images/products/hills1.jpeg",
      "price": 50,
    },

    {
      "name": "Hills",
      "picture" : "assets/images/products/hills2.jpeg",
      "price": 50,
    },

    
    
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2
      ),
      itemBuilder: (BuildContext context, int index){
        return SingleProduct(
          prodName: productList[index]['name'],
          prodPicture: productList[index]['picture'],
          prodPrice: productList[index]['price']);
      },
    );
  }
}

class SingleProduct extends StatelessWidget {

  final prodName;
  final prodPicture;
  final prodPrice;

  SingleProduct({
    this.prodName,
    this.prodPicture,
    this.prodPrice
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: new Text("tags"), 
        child: Material(
          child: InkWell(

            //onclick method
            onTap : () => Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new ProductDetails(
                  productDetailName: prodName,
                  productDetailPrice: prodPrice,
                  productDetailPicture: prodPicture,
                )
              )
            ),

            child: GridTile(
              child: Image.asset(prodPicture, fit: BoxFit.cover,), 
              footer: Container(
                color: Colors.white30,
                child: new Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(prodName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0)),
                    ),

                    new Text("\$${prodPrice}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 16.0),)


                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}