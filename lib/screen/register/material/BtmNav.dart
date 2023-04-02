import 'package:call_me/constants.dart';
import 'package:flutter/material.dart';

class BtmNav extends StatelessWidget {
  const BtmNav({
    Key key,
    this.press,
    this.text,
  }) : super(key: key);
  final Function press;
  final String text;
  // final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      height: 55,
      color: kPrimaryColor,
      onPressed: press,
      child: Text(
        "$text",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}