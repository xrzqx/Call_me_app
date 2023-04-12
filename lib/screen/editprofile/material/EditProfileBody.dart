import 'package:flutter/material.dart';

class EditProfileBody extends StatelessWidget {
  const EditProfileBody({
    // Key key,
    required this.nama,
    required this.phone,
    required this.email,
  }) ;
  // : super(key: key);
  final String nama, phone, email;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
              height: 64,
              // decoration: BoxDecoration(
              //   color: Colors.lightBlue,
              // ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("User Name"),
                  TextFormField(
                    initialValue: "$nama",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
              height: 64,
              // decoration: BoxDecoration(
              //   color: Colors.lightBlue,
              // ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Phone number"),
                  TextFormField(
                    initialValue: "$phone",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
              height: 64,
              // decoration: BoxDecoration(
              //   color: Colors.lightBlue,
              // ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email"),
                  TextFormField(
                    initialValue: "$email",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
