import 'package:call_me/screen/dasboard/material/ListViewDrawer.dart';
import 'package:call_me/screen/dasboard/material/body.dart';
import 'package:call_me/screen/search/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: ListDrawer(),
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                size: 30,
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        centerTitle: true,
        title: SvgPicture.asset("assets/icons/logo.svg"),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Search(),
                ),
              );
            },
          )
        ],
      ),
      body: Body(),
    );
  }
}

// class Dashboard extends StatefulWidget {
//   @override
//   _DashboardState createState() => _DashboardState();
// }

// class _DashboardState extends State<Dashboard> {
//   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       drawer: ListDrawer(),
//       appBar: PreferredSize(
//         child: SafeArea(
//           child: Container(
//             decoration: BoxDecoration(color: kPrimaryColor),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 IconButton(
//                   splashColor: Colors.transparent,
//                   highlightColor: Colors.transparent,
//                   icon: SvgPicture.asset("assets/icons/list_1.svg"),
//                   onPressed: () => _scaffoldKey.currentState.openDrawer(),
//                 ),
//                 SvgPicture.asset("assets/icons/logo.svg"),
//                 IconButton(
//                   splashColor: Colors.transparent,
//                   highlightColor: Colors.transparent,
//                   icon: SvgPicture.asset("assets/icons/search.svg"),
//                   onPressed: () {},
//                 ),
//               ],
//             ),
//           ),
//         ),
//         preferredSize: Size.fromHeight(100),
//       ),
//       body: Body(),
//     );
//   }
// }

// class Dashboard extends StatelessWidget {
//   Dashboard({
//     Key key,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: customNavbar(context),
//       body: Body(),
//       drawer: ListDrawer(),
//     );
//   }
// }

// PreferredSize customNavbar(BuildContext context) {
//   return PreferredSize(
//     child: SafeArea(
//       child: Container(
//         decoration: BoxDecoration(color: kPrimaryColor),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             IconButton(
//               splashColor: Colors.transparent,
//               highlightColor: Colors.transparent,
//               icon: SvgPicture.asset("assets/icons/list_1.svg"),
//               onPressed: () {},
//             ),
//             SvgPicture.asset("assets/icons/logo.svg"),
//             IconButton(
//               splashColor: Colors.transparent,
//               highlightColor: Colors.transparent,
//               icon: SvgPicture.asset("assets/icons/search.svg"),
//               onPressed: () {},
//             ),
//           ],
//         ),
//       ),
//     ),
//     preferredSize: Size.fromHeight(100),
//   );
// }
