import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Change Password",
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
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  // const Body({
  //   Key key,
  // }) : super(key: key);

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
                  Text("Current Password"),
                  TextFormField(
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
                  Text("New Password"),
                  TextFormField(
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
                  Text("Confrim Password"),
                  TextFormField(
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
