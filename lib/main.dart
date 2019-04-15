import 'package:flutter/material.dart';

void main() {
  runApp(Stateful());
}

class Stateful extends StatefulWidget {
  createState() {
    return StatefulState();
  }
}

class StatefulState extends State<Stateful> {
  bool _alreadySaved = false;

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful App',
              style: TextStyle(color: Colors.pink, fontSize: 30.0)),
          centerTitle: true,
        ),
        body: Center(
          child: IconButton(
            iconSize: 100,
            icon: _alreadySaved
                ? Icon(
                    Icons.favorite,
                    color: Colors.yellow,
                  )
                : Icon(
                    Icons.favorite,
                    color: Colors.pink,
                  ),
            onPressed: () {
              _alreadySaved = !_alreadySaved;
              setState(() {});
            },
          ),
        ),
      ),
    );
  }
}
