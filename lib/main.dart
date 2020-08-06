import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(

      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(

          title: Text('Dicee'),

          backgroundColor: Colors.cyan,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int leftdicenumber=1;
  int rightnumber=1;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(

              onPressed: (){

               setState(() {
                 leftdicenumber=Random().nextInt(6)+1;
               });
              },
              child: Image.asset('images/dice$leftdicenumber.png'),
            ),

          ),

          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  rightnumber=Random().nextInt(6)+1;
                });
              },
              child: Image.asset('images/dice$rightnumber.png'),
            ),
          ),

        ],
      ),
    );
  }
}


