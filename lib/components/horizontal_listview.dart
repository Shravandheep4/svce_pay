import 'package:flutter/material.dart';

class Stalls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[

          Category(
            imageLocation: 'assets/images/food/c1.png',
            imageCaption: 'Main canteen',
          ),

          Category(
            imageLocation: 'assets/images/food/c2.png',
            imageCaption: 'Food Court',
          ),
          
          Category(
            imageLocation: 'assets/images/food/c3.png',
            imageCaption: 'Aavin',
          ),

          Category(
            imageLocation: 'assets/images/food/c4.png',
            imageCaption: 'Cafateria',
          ),

          Category(
            imageLocation: 'assets/images/food/c5.png',
            imageCaption: 'Juice Center',
          ),

          Category(
            imageLocation: 'assets/images/food/f1.png',
            imageCaption: 'Chill out',
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