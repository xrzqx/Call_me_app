import 'package:call_me/constants.dart';
import 'package:call_me/screen/showprofile/showprofile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// Widget getTextWidgets(List<String> strings)
// {
//   List<Widget> list = new List<Widget>();
//   for(var i = 0; i < strings.length; i++){
//       list.add(new Text(strings[i]));
//   }
//   return new Row(children: list);
// }

Future<void> checkData() async {
  FirebaseFirestore db = FirebaseFirestore.instance;
  Map<String, Map<String, dynamic>> listUser = <String, Map<String, dynamic>>{};
  await db.collection("Users").get().then((event) {
  for (var doc in event.docs) {
    print("${doc.id} => ${doc.data().values}");
  }
});
}


class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: checkData(),
      builder: (context, snapshot) {
        return Container();
      }
    );
  }
}

// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return SingleChildScrollView(
//       // height: size.height * 0.03,
//       // decoration: BoxDecoration(
//       //   color: Colors.grey,
//       // ),
//       child: Column(
//         children: [
//           Container(
//             margin: EdgeInsets.only(
//               bottom: 6,
//             ),
//             height: size.height * 0.04,
//             decoration: BoxDecoration(
//               color: Color(0x99C4C4C4),
//             ),
//             child: Container(
//               // height: size.height * 0.03,
//               margin: EdgeInsets.only(
//                 left: kDefaultMargin,
//               ),
//               child: Row(
//                 children: [
//                   Text(
//                     "A",
//                     style: TextStyle(
//                       fontSize: 20,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),

//           ListBox(
//             nama: "alfareza",
//             press: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => ShowProfile(),
//                 ),
//               );
//             },
//           ),
//           ListBox(
//             nama: "alfareza",
//             press: () {},
//           ),
//           ListBox(
//             nama: "alfareza",
//             press: () {},
//           ),
//           ListBox(
//             nama: "alfareza",
//             press: () {},
//           ),
//           ListBox(
//             nama: "alfareza",
//             press: () {},
//           ),
//           ListBox(
//             nama: "alfareza",
//             press: () {},
//           ),
//           ListBox(
//             nama: "alfareza",
//             press: () {},
//           ),
//           ListBox(
//             nama: "alfareza",
//             press: () {},
//           ),
//           ListBox(
//             nama: "alfareza",
//             press: () {},
//           ),
//           ListBox(
//             nama: "alfareza",
//             press: () {},
//           ),
//           ListBox(
//             nama: "alfareza",
//             press: () {},
//           ),
//           ListBox(
//             nama: "alfareza",
//             press: () {},
//           ),
//           ListBox(
//             nama: "alfareza",
//             press: () {},
//           ),
//           ListBox(
//             nama: "alfareza",
//             press: () {},
//           ),
//           ListBox(
//             nama: "alfareza",
//             press: () {},
//           ),
//           ListBox(
//             nama: "alfareza",
//             press: () {},
//           ),
//           ListBox(
//             nama: "alfareza",
//             press: () {},
//           ),
//           ListBox(
//             nama: "alfareza",
//             press: () {},
//           ),
//           ListBox(
//             nama: "alfareza",
//             press: () {},
//           ),
//           ListBox(
//             nama: "alfareza",
//             press: () {},
//           ),
//           ListBox(
//             nama: "alfareza",
//             press: () {},
//           ),
//           ListBox(
//             nama: "alfareza",
//             press: () {},
//           ),
//           ListBox(
//             nama: "alfareza",
//             press: () {},
//           ),
//           ListBox(
//             nama: "alfareza",
//             press: () {},
//           ),
//         ],
//       ),
//     );
//   }
// }

class contactHeader extends StatelessWidget {
  final String alphabet;
  const contactHeader({super.key, required this.alphabet});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
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
                "$alphabet".toUpperCase(),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      );
  }
}

class ListBox extends StatelessWidget {
  const ListBox({
    // Key key,
    required this.nama,
    required this.press,
  }) ;
  // : super(key: key);

  final String nama;
  final Function press;

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      // height: size.height * 0.04,
      child: GestureDetector(
        onTap: () => {press()},
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
