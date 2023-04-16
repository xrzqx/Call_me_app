import 'package:call_me/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShowProfile extends StatelessWidget {
  final String name;
  final String email;
  const ShowProfile({super.key,required this.name,required this.email});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/back_icon.svg"),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "$name",
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              /*...*/
            },
            child: Text(
              "Save",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(
          left: kDefaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: kDefaultMargin,
                bottom: kDefaultMargin,
              ),
              child: Text(
                "Contacts",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
            // Container(
            //   margin: EdgeInsets.only(
            //     bottom: kDefaultMargin - 6,
            //   ),
            //   child: Row(
            //     children: [
            //       Container(
            //         child: SvgPicture.asset("assets/icons/phone30.svg"),
            //         margin: EdgeInsets.only(
            //           right: kDefaultMargin,
            //         ),
            //       ),
            //       Text(
            //         "+62 888555888",
            //         style: TextStyle(
            //           fontSize: 18,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              margin: EdgeInsets.only(
                bottom: kDefaultMargin - 6,
              ),
              child: Row(
                children: [
                  Container(
                    child: SvgPicture.asset("assets/icons/email30.svg"),
                    margin: EdgeInsets.only(
                      right: kDefaultMargin,
                    ),
                  ),
                  Text(
                    "$email",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            // Container(
            //   margin: EdgeInsets.only(
            //     bottom: kDefaultMargin - 6,
            //   ),
            //   child: Row(
            //     children: [
            //       Container(
            //         child: SvgPicture.asset("assets/icons/address30.svg"),
            //         margin: EdgeInsets.only(
            //           right: kDefaultMargin,
            //         ),
            //       ),
            //       Text(
            //         "dito05@gmail.com",
            //         style: TextStyle(
            //           fontSize: 18,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
