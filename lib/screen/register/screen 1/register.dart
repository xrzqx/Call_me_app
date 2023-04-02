import 'package:call_me/constants.dart';
import 'package:call_me/screen/register/material/BtmNav.dart';
import 'package:call_me/screen/register/material/navbar.dart';
import 'package:call_me/screen/register/screen%202/register.dart';
import 'package:flutter/material.dart';

// import 'body.dart';

final _formKey = GlobalKey<FormState>();

class Register extends StatelessWidget {
  // final _formKey = GlobalKey<_RegisBodyState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: RegisNavbar(size: size),
      body: RegisBody(),
      bottomNavigationBar: BtmNav(
        text: "Continue",
        press: () {
          if (_formKey.currentState.validate()) {
            // Process data.
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Register2(),
              ),
            );
          }
        },
      ),
    );
  }
}

//
//
//
//
class RegisBody extends StatefulWidget {
  @override
  _RegisBodyState createState() => _RegisBodyState();
}

class _RegisBodyState extends State<RegisBody> {
  // final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Container(
          // decoration: BoxDecoration(
          //   color: Colors.white,
          // ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: kDefaultMargin,
                  top: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "First, Let’s set up some basic details",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Please type Carefully and create a strong password",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //input
              Container(
                margin: EdgeInsets.only(
                  left: kDefaultMargin,
                  top: 30,
                  right: kDefaultMargin,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          TextFormField(
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            decoration: InputDecoration(
                              hintText: "email",
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                    //password
                    Container(
                      margin: EdgeInsets.only(
                        top: 15,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Password",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          TextFormField(
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            decoration: InputDecoration(
                              hintText: "password",
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                    //confirm password
                    Container(
                      margin: EdgeInsets.only(
                        top: 15,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Confirm Password",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          TextFormField(
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            decoration: InputDecoration(
                              hintText: "password",
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
