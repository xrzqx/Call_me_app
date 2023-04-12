// import 'package:call_me/fire_auth.dart';
import 'package:call_me/screen/dasboard/dashboard.dart';
import 'package:call_me/screen/register/screen%201/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:call_me/constants.dart';

final _formKey = GlobalKey<FormState>();
final _emailTextController = TextEditingController();
final _passwordTextController = TextEditingController();
final _messangerKey = GlobalKey<ScaffoldMessengerState>();
String err = '';
int errlen = 0;
var size;

// For signing in an user (have already registered)
Future<User?> signInUsingEmailPassword({
  required String email,
  required String password,
}) async {
  FirebaseAuth auth = FirebaseAuth.instance;
  User? user;
  try {
    UserCredential userCredential = await auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    user = userCredential.user;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      err = 'No user found for that email.';
      errlen = err.length;
      // print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      // print('Wrong password provided.');
      err = 'Wrong password provided.';
      errlen = err.length;
    }
  }

  return user;
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context);
    // print(err.length);
    return MaterialApp(
      scaffoldMessengerKey: _messangerKey,
      home: Scaffold(
        body: Body(),
        bottomNavigationBar: Btmnav(
          press: ()  async {
            if(_formKey.currentState!.validate()) {
              User? user = await signInUsingEmailPassword(
                email: _emailTextController.text,
                password:
                    _passwordTextController.text,
              );
              // print("err :" + "$errlen");
              if (err.length > 0) {
                _messangerKey.currentState!.showSnackBar( // is this context <<<
                  SnackBar(
                    content: Padding(
                      padding: EdgeInsets.only(
                        left: 10
                      ),
                      child: Text(
                      err,
                      style: const TextStyle(fontSize: 16), 
                      )
                      ),
                    behavior: SnackBarBehavior.floating,
                    margin: EdgeInsets.only(
                      bottom: size.height * 0.77,
                      left: 10,
                      right: 10,
                    ),
                  
                  ));
              }
            }
          },
        )
      ),
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        appBarTheme: AppBarTheme(backgroundColor: kPrimaryColor),
      ),
    );
  }
}

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Container(
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 99, 0, 0),
                  child: Image.asset("assets/images/logo.png"),
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
                            controller: _emailTextController,
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
                            controller: _passwordTextController,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            decoration: InputDecoration(
                              hintText: "password",
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              if (value.length < 6) {
                                return 'Password to short';
                              }
                              // user_stat.Password = value;
                              return null;
                            },
                            obscureText: true,
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

    // bottomNavigationBar: Btmnav(),
  }
}

class Btmnav extends StatelessWidget {
  final Function press;
  const Btmnav({super.key, required this.press});
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.136,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                InkWell(
                  // onPressed: () => context.go('/'),
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
                      color: kPrimaryColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              // height: size.height *0.1,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: kPrimaryColor,
              ),
              child: Column(
                children: [
                  TextButton(
                    child: Container(
                      alignment: Alignment.center,
                      height: size.height * 0.05,
                      child: Text(
                        "Log in",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    onPressed: () => {press()},
                    
                    // onPressed: () {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => Dashboard(),
                    //     ),
                    //   );
                    // },
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