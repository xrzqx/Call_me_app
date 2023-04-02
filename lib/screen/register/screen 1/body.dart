// import 'package:call_me/constants.dart';
// import 'package:flutter/material.dart';

// class RegisBody extends StatefulWidget {
//   @override
//   _RegisBodyState createState() => _RegisBodyState();
// }

// class _RegisBodyState extends State<RegisBody> {
//   final _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Form(
//         key: _formKey,
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 margin: EdgeInsets.only(
//                   left: kDefaultMargin,
//                   top: 30,
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       child: Text(
//                         "First, Let’s set up some basic details",
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       child: Text(
//                         "Please type Carefully and create a strong password",
//                         style: TextStyle(
//                           fontSize: 14,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               //input
//               Container(
//                 margin: EdgeInsets.only(
//                   left: kDefaultMargin,
//                   top: 30,
//                   right: kDefaultMargin,
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Email",
//                             style: TextStyle(
//                               fontSize: 16,
//                             ),
//                           ),
//                           TextFormField(
//                             decoration: InputDecoration(
//                               hintText: "email",
//                             ),
//                             validator: (value) {
//                               if (value.isEmpty) {
//                                 return 'Please enter some text';
//                               }
//                               return null;
//                             },
//                           ),
//                           // TextField(
//                           //   style: TextStyle(
//                           //     fontSize: 18,
//                           //   ),
//                           //   decoration: InputDecoration(
//                           //     hintText: "email",
//                           //   ),
//                           // ),
//                         ],
//                       ),
//                     ),
//                     //password
//                     Container(
//                       margin: EdgeInsets.only(
//                         top: 15,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Password",
//                             style: TextStyle(
//                               fontSize: 16,
//                             ),
//                           ),
//                           TextField(
//                             obscureText: true,
//                             style: TextStyle(
//                               fontSize: 18,
//                             ),
//                             decoration: InputDecoration(
//                               hintText: "password",
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     //confirm password
//                     Container(
//                       margin: EdgeInsets.only(
//                         top: 15,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Confirm Password",
//                             style: TextStyle(
//                               fontSize: 16,
//                             ),
//                           ),
//                           TextField(
//                             obscureText: true,
//                             style: TextStyle(
//                               fontSize: 18,
//                             ),
//                             decoration: InputDecoration(
//                               hintText: "confirm password",
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
