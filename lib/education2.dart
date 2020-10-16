import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import "package:flutter/rendering.dart";

class Star{
  Star({this.name, this.unit});
  int name;
  Icon unit;
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


class ItemStar extends StatefulWidget{
  @override
  _ItemStarState createState() => _ItemStarState();
}

class _ItemStarState extends State<ItemStar>{
  
  List<Star> _listOfStar = [
    Star(name: 1, unit: greyStar),
    Star(name: 2, unit: greyStar),
    Star(name: 3, unit: greyStar),
    Star(name: 4, unit: greyStar),
    Star(name: 5, unit: greyStar),
    ];
  
  
  void draw(List<Star> listofStar, int number){
     setState((){for( Star star in listofStar){
        if (star.name <= number){
          star.unit = darkStar;
        }
        else{
          star.unit = greyStar;
        }
     }
     }
    );
  }

  @override
  Widget build(BuildContext context){
      return Row(children: [
        GestureDetector(
          child: _listOfStar[0].unit,
          onTap: (){
            draw(_listOfStar, _listOfStar[0].name);
          }
        ),
        GestureDetector(
          child: _listOfStar[1].unit,
          onTap: (){
            draw(_listOfStar, _listOfStar[1].name);
          },
        ),
        GestureDetector(
          child: _listOfStar[2].unit,
          onTap: (){
            draw(_listOfStar, _listOfStar[2].name);
          },
        ),
        GestureDetector(
          child: _listOfStar[3].unit,
          onTap: (){
            draw(_listOfStar, _listOfStar[3].name);
          },
        ),
        GestureDetector(
          child: _listOfStar[4].unit,
          onTap: (){
            draw(_listOfStar, _listOfStar[4].name);
          },
        ),
      ]);
  }
}

void main() {
  runApp(MaterialApp(
    title: "TEST APP",
    home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow[400],
          title: Text("Test of Flutter", style: TextStyle(color: Colors.black))
            ),
          body: ItemStar()
        )
  )
  ); 
}
