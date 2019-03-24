import 'package:flutter/material.dart';

main(){
	runApp(MyApp());
}

class MyApp extends StatelessWidget{

	Widget build(context){
		return MaterialApp(
			home : Scaffold(
				appBar: AppBar(
					title:Text('EasyList')
				),
			),

		);
	}

}