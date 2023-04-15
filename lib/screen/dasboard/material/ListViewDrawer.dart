import 'package:call_me/constants.dart';
import 'package:call_me/login.dart';
import 'package:call_me/main.dart';
import 'package:call_me/screen/dasboard/dashboard.dart';
import 'package:call_me/screen/dasboard/password.dart';
import 'package:call_me/screen/editprofile/editprofile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListDrawer extends StatelessWidget {
  final User? user;
  const ListDrawer({super.key, this.user});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: size.height * 0.20,
            child: DrawerHeader(
              child: Stack(
                children: [
                  Align(
                    child: Container(
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        right: 30,
                        // bottom: 50,
                      ),
                      child: SvgPicture.asset("assets/icons/logo_drawer.svg",height: size.height * 0.10, width: size.width * 0.10,),
                    ),
                  ),
                  // Align(
                  //   child: Container(
                  //     child: IconButton(
                  //       splashColor: Colors.transparent,
                  //       highlightColor: Colors.transparent,
                  //       icon: SvgPicture.asset("assets/icons/edit_drawer.svg"),
                  //       onPressed: () {
                  //         Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //             builder: (context) => EditProfile(),
                  //           ),
                  //         );
                  //       },
                  //     ),
                  //     alignment: Alignment.centerRight,
                  //     // margin: EdgeInsets.only(
                  //     //   right: kDefaultMargin,
                  //     // ),
                  //   ),
                  // ),
                  ProfileDrawer(
                    // nama: user!.displayName.toString(),
                    // nama: data!.displayName.toString(),
                    nama: user!.displayName.toString(),
                    // phone: "+62888555888",
                    // email: user!.email.toString(),
                    email: user!.email.toString(),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: kPrimaryColor,
              ),
            ),
          ),
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
                    child: TextButton(
                      child: Text(
                        "Log out",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () async {
                        await FirebaseAuth.instance.signOut();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({
    // Key key,
    required this.nama,
    // required this.phone,
    required this.email,
  }) ;
  // : super(key: key);

  // final String nama, phone, email;
  final String? nama, email;

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
          // Container(
          //   margin: EdgeInsets.only(
          //     bottom: 5,
          //   ),
          //   child: Text(
          //     "$phone",
          //     style: TextStyle(
          //       fontSize: 18,
          //       color: Colors.white,
          //     ),
          //   ),
          // ),
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
