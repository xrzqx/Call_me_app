import 'package:call_me/constants.dart';
import 'package:flutter/material.dart';

class BtmNav extends StatelessWidget {
  const BtmNav({
    // required Key key,
    required this.press,
    required this.text,
  }) ;
  // : super(key: key);
  final Function press;
  final String text;
  // final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // return TextButton(
    //   height: 55,
    //   color: kPrimaryColor,
    //   onPressed: press,
    //   child: Text(
    //     "$text",
    //     style: TextStyle(
    //       color: Colors.white,
    //       fontSize: 18,
    //     ),
    //   ),
    // );
    return SizedBox(
      height: 55,
      child: TextButton(
        onPressed: () => {press()},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
        ), 
        child: 
        Text(
          "$text",
          style: TextStyle(color: Colors.white,fontSize: 18)
        )

      )
    );



  }
}
