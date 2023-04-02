import 'package:call_me/constants.dart';
import 'package:call_me/screen/register/material/BtmNav.dart';
import 'package:call_me/screen/register/material/navbar.dart';
import 'package:call_me/screen/register/screen%203/register.dart';
import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class Register2 extends StatelessWidget {
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
                builder: (context) => Register3(),
              ),
            );
          }
        },
      ),
    );
  }
}

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
                        "Let’s fill in your account profile",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Please provide accurate details that can be verifed",
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
                            "First name",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          TextFormField(
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            decoration: InputDecoration(
                              hintText: "First Name",
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
                            "Last name",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          TextFormField(
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            decoration: InputDecoration(
                              hintText: "Last Name",
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
