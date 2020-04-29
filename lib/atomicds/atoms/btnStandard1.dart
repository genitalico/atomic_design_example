import 'package:flutter/material.dart';

class BtnStandard1 extends StatelessWidget{

  final VoidCallback onPressed;

  const BtnStandard1({Key key,this.onPressed}):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*(0.07),
      child: FlatButton(
        onPressed: this.onPressed,
        color: Color(0xFFe1131d),
        textColor: Colors.white,
        disabledColor: Colors.grey,
        disabledTextColor: Colors.black,
        splashColor: Colors.blueAccent,
        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
        child: Text("Entrar",textAlign: TextAlign.center),
      )
    );
  }
}