import 'package:call_me/constants.dart';
import 'package:call_me/screen/search/material/body.dart';
import 'package:call_me/screen/search/material/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height * 0.12),
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Center(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    //difine Seach bar
                    Container(
                      width: 300,
                      height: 50,
                      margin: EdgeInsets.only(
                        left: kDefaultMargin,
                        // right: kDefaultMargin + 70,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0x80C4C4C4),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                              left: kDefaultMargin,
                            ),
                            child:
                                SvgPicture.asset("assets/icons/search20.svg"),
                          ),
                          Container(
                            child: Expanded(
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: kDefaultMargin,
                                  right: kDefaultMargin,
                                ), 
                                child: TextField(
                                  style: TextStyle(
                                    fontSize: 18
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Search"
                                    )
                                  ),
                              ),
                              ),
                          ),
                        ],
                      ),
                    ),
                    // define Cancel Button
                    Container(
                      margin: EdgeInsets.only(
                        left: kDefaultMargin,
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Cancel",
                          style: TextStyle(color: Colors.red, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),

      body: Body(),
      // appBar: PreferredSize(
      //   child: SafeArea(
      //     child: Container(
      //       decoration: BoxDecoration(color: Colors.red),
      //       child: Center(
      //         child: Stack(
      //           children: [
      //             Container(
      //               decoration: BoxDecoration(
      //                 color: Colors.blue,
      //               ),
      //               height: 50,
      //               child: Container(
      //                 child: Stack(
      //                   children: [
      //                     Center(
      //                       child: Container(
      //                         height: 50,
      //                         margin: EdgeInsets.only(
      //                           left: kDefaultMargin,
      //                           right: kDefaultMargin + 70,
      //                         ),
      //                         decoration: BoxDecoration(
      //                           color: Colors.white,
      //                           borderRadius: BorderRadius.all(
      //                             Radius.circular(10),
      //                           ),
      //                         ),
      //                         child: Row(
      //                           children: [
      //                             Text("data"),
      //                             Text("data"),
      //                           ],
      //                         ),
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             )
      //             // Container(
      //             //   margin: EdgeInsets.only(
      //             //     left: kDefaultMargin,
      //             //     right: kDefaultMargin + 70,
      //             //   ),
      //             //   decoration: BoxDecoration(
      //             //     color: Colors.blue,
      //             //     borderRadius: BorderRadius.all(
      //             //       Radius.circular(10),
      //             //     ),
      //             //   ),
      //             //   height: 45,
      //             //   child: Row(
      //             //     children: [
      //             //       Container(
      //             //         padding: EdgeInsets.only(
      //             //           left: kDefaultMargin,
      //             //         ),
      //             //         child: SvgPicture.asset("assets/icons/search20.svg"),
      //             //       ),
      //             //       // Icon(Icons.search),
      //             //       Container(
      //             //         child: Text(
      //             //           "Search",
      //             //           style: TextStyle(
      //             //             fontSize: 14,
      //             //           ),
      //             //         ),
      //             //         margin: EdgeInsets.only(left: 10),
      //             //       ),
      //             //       Container(
      //             //         decoration: BoxDecoration(
      //             //           color: Colors.amber,
      //             //         ),
      //             //         alignment: Alignment.centerRight,
      //             //         child: Text("data"),
      //             //       ),
      //             //     ],
      //             //   ),
      //             // ),

      //             // Align(
      //             //   alignment: Alignment.centerLeft,
      //             //   child: Padding(
      //             //     padding: const EdgeInsets.only(
      //             //       left: kDefaultMargin,
      //             //     ),
      //             //     child: IconButton(
      //             //       splashColor: Colors.transparent,
      //             //       highlightColor: Colors.transparent,
      //             //       icon: SvgPicture.asset("assets/icons/Arrow_b1.svg"),
      //             //       onPressed: () {
      //             //         Navigator.pop(context);
      //             //       },
      //             //     ),
      //             //   ),
      //             // ),
      //             // Align(
      //             //   alignment: Alignment.center,
      //             //   child: SvgPicture.asset("assets/icons/logo_green.svg"),
      //             // ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      //   preferredSize: Size.fromHeight(size.height * 0.15),
      // ),
    );
  }
}
