import 'package:flutter/material.dart';
import 'package:test_project/education1.dart';
import 'package:test_project/education2.dart';

void main() => runApp(HeroApp());

class HeroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transition Demo',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: GestureDetector(
        child: Hero(
          tag: 'imageHero',
          child: row
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return DetailScreen();
          }));
        },
      ),
    );
  }
}

Icon darkStar = Icon(
      Icons.star,
      color: Colors.black87,
      size: 40
    );


Icon greyStar = Icon(
      Icons.star,
      color: Colors.black38,
      size: 40
    );

 
  Row row = Row(children: [
    darkStar,
    darkStar,
    darkStar,
    greyStar,
    greyStar
  ],);

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Align(
          child: Hero(
            tag: 'imageHero',
            child: row
          ),
          alignment: Alignment.bottomRight,
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}







