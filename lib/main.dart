import 'package:flutter/material.dart';

void main(){
  runApp(Stateful());
}

class Stateful extends StatefulWidget{
  createState(){
    return StatefulState();
  }
}
class StatefulState extends State<Stateful>{
Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful App', style: TextStyle(color: Colors.white, fontSize: 30.0)),
       centerTitle: true,
        ),
        body: Center(
          child: IconButton(
            icon: Icon(Icons.favorite,size: 200),
            onPressed: (){
              
            },
        ),
      ),
       ),
    );
  }
}