import 'package:call_me/constants.dart';
import 'package:call_me/main.dart';
import 'package:call_me/screen/dasboard/password.dart';
import 'package:call_me/screen/editprofile/editprofile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//

class ListDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: size.height * 0.26,
            child: DrawerHeader(
              child: Stack(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    child: Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(
                        right: 30,
                      ),
                      child: SvgPicture.asset("assets/icons/logo_drawer.svg"),
                    ),
                  ),
                  Align(
                    child: Container(
                      child: IconButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        icon: SvgPicture.asset("assets/icons/edit_drawer.svg"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditProfile(),
                            ),
                          );
                        },
                      ),
                      alignment: Alignment.centerRight,
                      // margin: EdgeInsets.only(
                      //   right: kDefaultMargin,
                      // ),
                    ),
                  ),
                  ProfileDrawer(
                    nama: "Alfareza dito",
                    phone: "+62888555888",
                    email: "dito05@gmail.com",
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: kPrimaryColor,
              ),
            ),
          ),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => ResetPassword(),
          //       ),
          //     );
          //   },
          //   child: Container(
          //     padding: EdgeInsets.only(
          //       left: kDefaultMargin,
          //       top: 10,
          //       bottom: 10,
          //     ),
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //     ),
          //     child: Row(
          //       children: [
          //         SvgPicture.asset("assets/icons/key-solid30.svg"),
          //         Container(
          //           margin: EdgeInsets.only(
          //             left: kDefaultMargin,
          //           ),
          //           child: Text("Password"),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            height: size.height * 0.74,
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResetPassword(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                      left: kDefaultMargin,
                      top: 10,
                      bottom: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/key-solid30.svg"),
                        Container(
                          margin: EdgeInsets.only(
                            left: kDefaultMargin,
                          ),
                          child: Text("Password"),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                    ),
                    child: FlatButton(
                      child: Text(
                        "Log out",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () {
                        // Navigator.pushNamed(context, '/login');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyApp(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Positioned(
          //   bottom: 0,
          //   left: 0,
          //   right: 0,
          //   child: Container(
          //     height: 55,
          //     decoration: BoxDecoration(
          //       color: Colors.green,
          //     ),
          //   ),
          // ),

          // ListTile(
          //   title: Text('Item 1'),
          //   onTap: () {
          //     // Update the state of the app
          //     // ...
          //     // Then close the drawer
          //     Navigator.pop(context);
          //   },
          // ),
          // ListTile(
          //   title: Text('Item 2'),
          //   onTap: () {
          //     // Update the state of the app
          //     // ...
          //     // Then close the drawer
          //     Navigator.pop(context);
          //   },
          // ),
        ],
      ),
    );
  }
}

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({
    Key key,
    this.nama,
    this.phone,
    this.email,
  }) : super(key: key);

  final String nama, phone, email;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              bottom: 15,
            ),
            child: Text(
              "My Profile",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: 5,
            ),
            child: Text(
              "$nama",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: 5,
            ),
            child: Text(
              "$phone",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            child: Text(
              "$email",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
