import 'package:call_me/constants.dart';
import 'package:call_me/screen/showprofile/showprofile.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      // height: size.height * 0.03,
      // decoration: BoxDecoration(
      //   color: Colors.grey,
      // ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              bottom: 6,
            ),
            height: size.height * 0.04,
            decoration: BoxDecoration(
              color: Color(0x99C4C4C4),
            ),
            child: Container(
              // height: size.height * 0.03,
              margin: EdgeInsets.only(
                left: kDefaultMargin,
              ),
              child: Row(
                children: [
                  Text(
                    "A",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //
          //
          //
          ListBox(
            nama: "alfareza",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShowProfile(),
                ),
              );
            },
          ),
          ListBox(
            nama: "alfareza",
            press: () {},
          ),
          ListBox(
            nama: "alfareza",
            press: () {},
          ),
          ListBox(
            nama: "alfareza",
            press: () {},
          ),
          ListBox(
            nama: "alfareza",
            press: () {},
          ),
          ListBox(
            nama: "alfareza",
            press: () {},
          ),
          ListBox(
            nama: "alfareza",
            press: () {},
          ),
          ListBox(
            nama: "alfareza",
            press: () {},
          ),
          ListBox(
            nama: "alfareza",
            press: () {},
          ),
          ListBox(
            nama: "alfareza",
            press: () {},
          ),
          ListBox(
            nama: "alfareza",
            press: () {},
          ),
          ListBox(
            nama: "alfareza",
            press: () {},
          ),
          ListBox(
            nama: "alfareza",
            press: () {},
          ),
          ListBox(
            nama: "alfareza",
            press: () {},
          ),
          ListBox(
            nama: "alfareza",
            press: () {},
          ),
          ListBox(
            nama: "alfareza",
            press: () {},
          ),
          ListBox(
            nama: "alfareza",
            press: () {},
          ),
          ListBox(
            nama: "alfareza",
            press: () {},
          ),
          ListBox(
            nama: "alfareza",
            press: () {},
          ),
          ListBox(
            nama: "alfareza",
            press: () {},
          ),
          ListBox(
            nama: "alfareza",
            press: () {},
          ),
          ListBox(
            nama: "alfareza",
            press: () {},
          ),
          ListBox(
            nama: "alfareza",
            press: () {},
          ),
          ListBox(
            nama: "alfareza",
            press: () {},
          ),
        ],
      ),

      //
      //
    );
  }
}

class ListBox extends StatelessWidget {
  const ListBox({
    Key key,
    this.nama,
    this.press,
  }) : super(key: key);

  final String nama;
  final Function press;

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      // height: size.height * 0.04,
      child: GestureDetector(
        onTap: press,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              // height: size.height * 0.03,
              padding: EdgeInsets.only(
                left: kDefaultMargin,
              ),

              child: Row(
                children: [
                  Text(
                    "$nama",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              indent: kDefaultMargin,
              endIndent: kDefaultMargin,
            ),
          ],
        ),
      ),
    );
  }
}
