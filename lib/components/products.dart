import 'package:flutter/material.dart';
import 'package:svce_pay/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  var productList = [
    {
      "name": "Samosa",
      "picture" : "assets/images/food/pl1.jpg",
      "price": 50,
    },

    {
      "name": "Pav Bhaji",
      "picture" : "assets/images/food/pl2.jpg",
      "price": 50,
    },

    {
      "name": "Flavours",
      "picture" : "assets/images/food/pl3.jpg",
      "price": 50,
    },

    {
      "name": "Ice Cream",
      "picture" : "assets/images/food/pl4.jpg",
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
                color: Colors.white,
                child: new Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(prodName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0, color: Colors.black)),
                    ),

                    new Text("Rs ${prodPrice}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 16.0),)


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