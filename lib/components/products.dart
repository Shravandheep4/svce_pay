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
        tag: prodName, 
        child: Material(
          child: InkWell(
            onTap : () => Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new ProductDetails())),

            child: GridTile(
              child: Image.asset(prodPicture, fit: BoxFit.cover,), 
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(prodName, style: TextStyle(fontWeight: FontWeight.bold),),
                  title: Text("\$$prodPrice" ,style: TextStyle(color: Colors.red, fontWeight: FontWeight.w800),),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}