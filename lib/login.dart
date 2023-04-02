import 'package:call_me/screen/dasboard/dashboard.dart';
import 'package:call_me/screen/register/screen%201/register.dart';
import 'package:flutter/material.dart';
import 'package:call_me/constants.dart';

class LoginPage extends StatelessWidget {
  // static String tag = 'login-page';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // decoration: BoxDecoration(
        //   color: Colors.green,
        // ),
        child: Column(
          // decoration: BoxDecoration(
          //   color: Colors.green,
          // ),
          // child
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 99, 0, 0),
                child: Image.asset("assets/images/logo.png"),
              ),
            ),
            Center(
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(20, 64, 20, 0),
                height: 32,
                // decoration: BoxDecoration(
                //   color: Colors.lightBlue,
                // ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    hintText: "User Name",
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(20, 25, 20, 0),
                height: 32,
                // decoration: BoxDecoration(
                //   color: Colors.lightBlue,
                // ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                ),
                // child: TextFormField(
                //   decoration: const InputDecoration(
                //     labelText: 'Password',
                //     // icon: const Padding(
                //     //   padding: const EdgeInsets.only(top: 15.0),
                //     //   child: const Icon(Icons.lock),
                //     // ),
                //   ),
                //   // validator: (val) =>
                //   //     val.length < 6 ? 'Password too short.' : null,
                //   // onSaved: (val) => _password = val,
                //   obscureText: true,
                // ),
              ),
            ),
          ],
        ),
      ),
    );

    // bottomNavigationBar: Btmnav(),
  }
}

// class RegisBtn extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // height: size.height * 0.08,
//       child: Column(
//         children: [Text("tesss")],
//       ),
//     );
//   }
// }

class Btmnav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.136,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Register(),
                      ),
                    );
                  },
                  child: Text(
                    "Don’t have account? Sign up",
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                      fontSize: 16,
                    ),
                  ),
                ),
                // Text(
                //   "Don’t have account? Sign up",
                //   style: TextStyle(
                //     // fontWeight: FontWeight.bold,
                //     color: kPrimaryColor,
                //     fontSize: 16,
                //   ),
                // ),
                // Text((size.height * 0.08).toString()),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 55,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: kPrimaryColor,
              ),
              child: Column(
                children: [
                  FlatButton(
                    child: Container(
                      // width: size.width,
                      alignment: Alignment.center,
                      height: size.height * 0.08,
                      // decoration: BoxDecoration(
                      //   color: Colors.green,
                      // ),
                      child: Text(
                        "Log in",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Dashboard(),
                        ),
                      );
                    },
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
