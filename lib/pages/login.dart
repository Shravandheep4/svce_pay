import 'package:flutter/material.dart';
import 'package:svce_pay/main.dart';
import 'package:svce_pay/components/login_comp.dart';

class Login extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Colors.greenAccent,
              Colors.teal[300]
            ]
          )
        ),

        child: Stack(
          children: <Widget>[
            
            Align(
              alignment: Alignment.bottomRight,
              heightFactor: 0.5,
              widthFactor: 0.5,
              child: Material(
                color: Color.fromRGBO(255, 255, 255, 0.4),
                borderRadius: BorderRadius.all(Radius.circular(200)),
                child: Container(
                  width: 400,
                  height: 400,
                ),
              ),
            ),
            

            Center(
            child: Container(
              width: 430,
              height: 400,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
                children: <Widget>[

                  Material(
                    elevation: 10.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/m1.jpeg', width: 80, height: 80),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  ),

                  InputField(Icon(Icons.person, color: Colors.white70) , "Username" ),
                  InputField(Icon(Icons.lock, color: Colors.white70) , "Password" ),
                  
                  Container(
                    width: 150,
                    height: 40,

                    child: RaisedButton(
                      elevation: 2.0,
                      textColor: Colors.white,
                      onPressed: (){
                        Navigator.pushReplacement(context,  MaterialPageRoute(builder: (context) => new HomePage()));
                      },
                      color: Colors.white30,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                      child: Text("Login", style: TextStyle(fontSize: 20.0, fontFamily: ""),),
                    ),
                  )

                ],
              ),
            ),
          )


          ],
        ),
      ),
    );
  }
}