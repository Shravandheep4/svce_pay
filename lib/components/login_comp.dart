import 'package:flutter/material.dart';

class InputField extends StatelessWidget {

  final Icon fieldicon;
  final String hintText;

  InputField(
    this.fieldicon,
    this.hintText
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 300,
      child: Material(
        elevation: 10.0,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.white30,
        

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: fieldicon)
            ),

            Container(
              width: 250,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), bottomRight: Radius.circular(10.0))
                
              ),
              
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintText,
                    
                    fillColor: Colors.white,
                    filled: true,
                  ),
                
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black54
                  ),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}