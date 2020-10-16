import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
       appBar: AppBar(
          centerTitle: true,
          title: Text('Flutter Button'),
          backgroundColor: Colors.green[600],
        ),
        body: App(),
       floatingActionButton: FloatingActionButton.extended(onPressed: (){}, label: Text("Кнопка внизу"),icon: Icon(Icons.thumb_up)),
  )));
}
class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FloatingActionButton(
        backgroundColor: Colors.orange,
        elevation: 1,
        onPressed: () => {},
      ),
      );
        }}