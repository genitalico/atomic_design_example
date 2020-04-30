import 'package:flutter/material.dart';

class BtnStandard1 extends StatelessWidget{

  final VoidCallback onPressed;
  final String text;
  final Color textColor;
  final Color color;

  const BtnStandard1({Key key,this.onPressed,this.text,this.textColor,this.color}):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*(0.07),
      child: FlatButton(
        onPressed: this.onPressed,
        color: this.color,
        textColor: this.textColor,
        disabledColor: Colors.grey,
        disabledTextColor: Colors.black,
        splashColor: Colors.blueAccent,
        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
        child: Text(this.text,textAlign: TextAlign.center),
      )
    );
  }
}