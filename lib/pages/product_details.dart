import 'package:flutter/material.dart';
import 'package:svce_pay/main.dart';

class ProductDetails extends StatefulWidget {

  final productDetailName;
  final productDetailPrice;
  final productDetailPicture;

  ProductDetails({
    this.productDetailName,
    this.productDetailPrice,
    this.productDetailPicture
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 5.0,
        backgroundColor: Colors.green,
        //centerTitle: true,
        title : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => new HomePage()));
          },
          child: Text("SVCEpay" ,textAlign: TextAlign.center,)
          ),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white),onPressed: (){} ),
          //new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white),onPressed: (){} )
        ],
      ),


      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.productDetailPicture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.productDetailName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("\$${widget.productDetailPrice}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

          Row(
            children: <Widget>[
              
              //The quantity button
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(
                      context: context ,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text("Quantity"),
                          content: new Text("Choose the quantity"),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                              child: new Text("Close"),
                            )
                          ],
                        );
                      }
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  height: 48.0,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child :new Text("Quantity")
                      ),

                      Expanded(
                        child :new Icon(Icons.arrow_drop_down)
                      )

                    ],
                  ),  
                ),
              ),

              //Parcel Button
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(
                      context: context ,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text("Packaging"),
                          content: new Text("Choose the packing method"),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                              child: new Text("Close"),
                            )
                          ],
                        );
                      }
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  height: 48.0,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child :new Text("Packaging")
                      ),

                      Expanded(
                        child :new Icon(Icons.arrow_drop_down)
                      )

                    ],
                  ),  
                ),
              )
            ],
          ),


          Row(
            children: <Widget>[
              
              //  The quantity button
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 1.0,
                  height: 47.0,
                  child :new Text("Buy Now", textAlign: TextAlign.center,)  
                ),
              ),

              new IconButton(icon: Icon(Icons.favorite, color: Colors.red,), onPressed: (){} ),


              new IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.red,), onPressed: (){} )
            ],
          ),

          Divider(),

          new ListTile(
            title : new Text("Food Descripton"),
            subtitle: new Text("SVCE offers various kinds of delicious!!"), 
          
          ),

          Divider(),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("You can get these too!"),
          ),

          Container(
            height: 360.0,
            child: SimilarProducts(),
          )
        ],
      ),


    );
  }
}



class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
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
        return SingleSimilarProducts(
          prodName: productList[index]['name'],
          prodPicture: productList[index]['picture'],
          prodPrice: productList[index]['price']);
      },
    );
  }
}

class SingleSimilarProducts extends StatelessWidget {

  final prodName;
  final prodPicture;
  final prodPrice;

  SingleSimilarProducts({
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
                color: Colors.white70,
                child: new Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(prodName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0)),
                    ),

                    new Text("Rs.${prodPrice}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red, fontSize: 16.0),)


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