import 'package:flutter/material.dart';

import 'material/EditProfileBody.dart';

class EditProfile extends StatelessWidget {
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
          "Edit Profile",
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
      // appBar: AppBar(
      //   iconTheme: IconThemeData(
      //     color: Colors.white, //change your color here
      //   ),
      //   title: Text(
      //     "Edit Profile",
      //     style: TextStyle(
      //       fontSize: 22,
      //       color: Colors.white,
      //     ),
      //   ),
      //   // centerTitle: true,
      // ),
      body: EditProfileBody(
        nama: "Alfareza",
        phone: "+62888555888",
        email: "dito05@gmail.com",
      ),
    );
  }
}
