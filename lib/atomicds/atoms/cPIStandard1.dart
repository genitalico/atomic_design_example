import 'package:flutter/material.dart';

class CPIStandard1 extends StatelessWidget {
  final double opacity;

  const CPIStandard1({Key key, this.opacity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Opacity(
        opacity: this.opacity,
        child: CircularProgressIndicator(
          backgroundColor: const Color(0xFFacbf00),
          valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),
        ));
  }
}
