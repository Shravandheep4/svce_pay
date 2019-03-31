import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[

          Category(
            imageLocation: 'assets/images/cats/tshirt.png',
            imageCaption: 'Shirt',
          ),

          Category(
            imageLocation: 'assets/images/cats/dress.png',
            imageCaption: 'Dress',
          ),
          
          Category(
            imageLocation: 'assets/images/cats/formal.png',
            imageCaption: 'Formals',
          ),

          Category(
            imageLocation: 'assets/images/cats/informal.png',
            imageCaption: 'Informals',
          ),

          Category(
            imageLocation: 'assets/images/cats/shoe.png',
            imageCaption: 'Shoes',
          ),

          Category(
            imageLocation: 'assets/images/cats/jeans.png',
            imageCaption: 'Jeans',
          ),

        ],

      ),
    );
  }
}

class Category extends StatelessWidget {
  
  final String imageLocation;
  final String imageCaption;

  Category({
    this.imageLocation,
    this.imageCaption
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(imageLocation),
            subtitle: Container(
              child : Text(imageCaption, textAlign: TextAlign.center, ),
            ),
          ),
        ),
      ),
    );
  }
}