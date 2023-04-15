import 'package:call_me/constants.dart';
import 'package:call_me/screen/register/material/BtmNav.dart';
import 'package:call_me/screen/register/material/navbar.dart';
import 'package:call_me/screen/register/screen%202/register.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

// import 'package:flutter/model/User/users.dart';

// import 'body.dart';

final _formKey = GlobalKey<FormState>();
final _emailcontroller = TextEditingController();
final _passwordcontroller = TextEditingController();

class Register extends StatelessWidget {
  final ScaffoldMessengerState? _scaffold;
  const Register(this._scaffold, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: RegisNavbar(size: size),
      body: RegisBody(),
      // bottomNavigationBar: ,
      bottomNavigationBar: BtmNav(
        // key: _formKey,
        text: "Continue",
        press: () async {
          if (_formKey.currentState!.validate()) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Register2(email: _emailcontroller.text, password: _passwordcontroller.text,scaffoldmsg: _scaffold,),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: kDefaultMargin,
                  top: 10,
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
                            controller: _emailcontroller,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            decoration: InputDecoration(
                              hintText: "email",
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              if (EmailValidator.validate(value) != true) {
                                return 'Please enter valid email';
                              }
                              // user_stat.Email = value;
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
                            controller: _passwordcontroller,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            decoration: InputDecoration(
                              hintText: "password",
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              if (value.length < 5) {
                                return 'password must be at least contain 6 digits';
                              }
                              // _setConfirmPassword(value);
                              // user_stat.Password = value;
                              return null;
                            },
                            obscureText: true
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
                              hintText: "confirm password",
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              if (_passwordcontroller.text != value) {
                                return 'Password doesnt match!!';
                              }
                              return null;
                            },
                            obscureText: true
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
