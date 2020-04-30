import 'package:adexample/atomicds/atoms/textFieldStandard1.dart';
import 'package:flutter/material.dart';

class EmailPassword extends StatefulWidget {
  _EmailPassword _state;

  EmailPassword({Key key}) : super(key: key);

  void changeColor() {
    _state.changeColor();
  }

  String emailText() => _state.emailText();

  String passwordText() => _state.passwordText();

  @override
  _EmailPassword createState() {
    return _state = _EmailPassword();
  }
}

class _EmailPassword extends State<EmailPassword> {
  TextEditingController _emailController;
  TextEditingController _passwordController;
  Color _emailColor = Colors.white;
  FocusNode focusNodeEmail;

  _EmailPassword();

  void _onTap() {
    if (_emailColor == Colors.red) {
      setState(() {
        _emailColor = Colors.white;
      });
    }
  }

  void changeColor() {
    focusNodeEmail.requestFocus();
    if (_emailColor == Colors.white) {
      setState(() {
        _emailColor = Colors.red;
      });
    }
  }

  String emailText() => _emailController.text;

  String passwordText() => _passwordController.text;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    focusNodeEmail = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    focusNodeEmail.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        TextFieldStandard1(
            hintText: "Correo",
            prefixIcon: Icons.mail,
            controller: _emailController,
            onTab: _onTap,
            textColor: _emailColor,
            focusNode: focusNodeEmail),
        SizedBox(height: 15),
        TextFieldStandard1(
            hintText: "Contraseña",
            prefixIcon: Icons.lock,
            controller: _passwordController,
            onTab: () {},
            obscureText: true)
      ],
    );
  }
}
