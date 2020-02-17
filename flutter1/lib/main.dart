
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:MyApp(),
));

// #docregion MyApp
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Introduction'),
        ),
        body: Container(
          color: Colors.indigo[300],
          alignment: Alignment.center,
          child: Column(
           children: <Widget>[
             Image.asset('images/jay.JPG',height: 250,width: 250,),
             Text('My name is Tianwit Moungnoycharoen',style: TextStyle(height: 4, fontSize: 15,color: Colors.black87,fontWeight: FontWeight.bold)),
             Text('My student ID is 61130500214',style: TextStyle(height: 4, fontSize: 15,color: Colors.black87,fontWeight: FontWeight.bold)),
             Text('My hobby is watch a movie in Netflix',style: TextStyle(height: 4, fontSize: 15,color: Colors.black87,fontWeight: FontWeight.bold)), 
           ],
          ),
        ) 
      ),
    );
  }
}