import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';

class Item{
  Item({this.name});
  final String name;
  bool isClicked = false;
  int counter = 0;
}



class ListItem extends StatefulWidget{
   @override
  SIL createState() => SIL();
} 


class SIL extends State<ListItem>{

  final Item item = Item(name: "Молоко");
  Color getColor;
  TextStyle styleText;

  void _change(Item item){
    setState((){
    ++item.counter;
    if(item.isClicked == true) item.isClicked = false;
    else item.isClicked = true;
    });
  }

  void _getColor(){
    setState((){
      getColor = item.isClicked ? Colors.black54: Theme.of(context).primaryColor;
      });
  }

  void _getTextStyle(){

    setState((){if(item.isClicked == false) styleText = null;
    else{
      styleText = TextStyle(
        color: Colors.black54,
        decoration: TextDecoration.underline
      );
    }
    });
  }

  @override
  Widget build(BuildContext context){
    return ListTile(
      onTap:(){ _change(item);
      _getColor();
      _getTextStyle();
      },
      leading: CircleAvatar(
        backgroundColor: getColor,
        child: Text(item.name[0]),
        ),
        title: Text(
          item.name, 
          style: styleText
          ),
        subtitle: Text(
          item.counter.toString()
        ),
    );
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
          body: ListItem()
        )
  )
  ); 
}

