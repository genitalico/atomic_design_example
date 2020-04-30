import 'package:adexample/atomicds/atoms/btnStandard1.dart';
import 'package:adexample/atomicds/atoms/cPIStandard1.dart';
import 'package:adexample/atomicds/molecules/emailPassword.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  double _opacity = 0;
  EmailPassword _emailPassword;
  BtnStandard1 _btn1;

  void _btnTouch() {
    this._emailPassword.changeColor();
    print(this._emailPassword.emailText());
    print(this._emailPassword.passwordText());
    setState(() {
      if (_opacity == 0)
        _opacity = 1;
      else
        _opacity = 0;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    this._emailPassword = EmailPassword();
    this._btn1 = BtnStandard1(onPressed: _btnTouch,textColor: Colors.white,text: "Entrar",color: Color(0xFFE1131D));
  }

  @override
  Widget build(BuildContext context) {
    double _marginlr = MediaQuery.of(context).size.width * 0.07;
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(left: _marginlr, right: _marginlr),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1.7,
            child: Image(
              image: AssetImage("assets/images/80bitslogo.png"),
            ),
          ),
          SizedBox(height: 60),
          this._emailPassword,
          SizedBox(height: 15),
          CPIStandard1(opacity: this._opacity),
          SizedBox(height: 15),
          _btn1
        ],
      ),
    );
  }
}
