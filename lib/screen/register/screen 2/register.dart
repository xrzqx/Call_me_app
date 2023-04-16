import 'package:call_me/constants.dart';
import 'package:call_me/main.dart';
import 'package:call_me/model/User/users.dart';
import 'package:call_me/screen/dasboard/dashboard.dart';
import 'package:call_me/screen/register/material/BtmNav.dart';
import 'package:call_me/screen/register/material/navbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:call_me/screen/register/screen%201/register.dart';
// import 'package:call_me/screen/register/screen%201/register.dart';
// import 'package:call_me/screen/register/screen%203/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();
final _firstNameController = TextEditingController();
final _lastNameController = TextEditingController();
// final _messangerKey = GlobalKey<ScaffoldMessengerState>();
String _err = '';
// final ScaffoldMessengerState _scaffold

// For registering a new user
Future<User?> registerUsingEmailPassword({
  // required String name,
  required String email,
  required String password,
  required String name,
}) async {
  FirebaseAuth auth = FirebaseAuth.instance;
  User? user;
  _err = '';
  try {
    UserCredential userCredential = await auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    user = userCredential.user;
    await user!.updateDisplayName(name);
    await user.reload();
    user = await auth.currentUser;
    await storeUserDB(uid: user!.uid, name: user.displayName.toString(), email: user.email.toString());
    // print(user);
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      _err = 'The password provided is too weak.';
    } else if (e.code == 'email-already-in-use') {
      _err = 'The account already exists for that email.';
    }
  } catch (e) {
    print(e);
  }

  return user;
}

Future<void> storeUserDB({
  required String uid,
  required String name,
  required String email,
}) async {
  FirebaseFirestore db = FirebaseFirestore.instance;
  final user = {
  // "uid": uid,
  "name": name,
  "email": email
  };
  final docData = {
    uid: user
  };
  Map<String, dynamic>? listUser;
  await db.collection("Users").doc(name[0].toUpperCase()).get().then((event) {
    // listUser.addAll(event.data());
    listUser = event.data();
  });
  if (listUser != null) {
    listUser?.addAll(docData);
  } else {
    listUser = docData;
  }
  db.collection("Users")
  .doc(name[0].toUpperCase())
  .set(listUser!, SetOptions(merge: true))
  .onError((e, _) => print("Error writing document: $e"));
  // return '200';
}

class Register2 extends StatelessWidget {
  final String email;
  final String password;
  final ScaffoldMessengerState? scaffoldmsg;
  Register2({Key? key, required this.email, required this.password,this.scaffoldmsg}) : super(key: key);
    
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: RegisNavbar(size: size,),
        body: RegisBody(),
        bottomNavigationBar: BtmNav(
          text: "Continue",
          press: () async {
            if (_formKey.currentState!.validate()) {
              User? user = await registerUsingEmailPassword(
                email: email,
                password: password,
                name: "${_firstNameController.text} ${_lastNameController.text}"
              );
              // print(user);
              if (_err.isNotEmpty) {
                scaffoldmsg!.showSnackBar( // is this context <<<
                    SnackBar(
                      duration: const Duration(seconds: 1),
                      content: Padding(
                        padding: EdgeInsets.only(
                          left: 10
                        ),
                        child: Text(
                        _err,
                        style: const TextStyle(fontSize: 16), 
                        )
                        ),
                      behavior: SnackBarBehavior.floating,
                      margin: EdgeInsets.only(
                        bottom: size.height * 0.05,
                        left: 10,
                        right: 10,
                      ),
                    )
                  );
              }
            }
          },
        ),
      );
  }
}

class RegisBody extends StatefulWidget {
  const RegisBody({super.key});

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
                            controller: _firstNameController,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            decoration: InputDecoration(
                              hintText: "First Name",
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter some text';
                              }
                              // user_stat.First_n = value;
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
                            controller: _lastNameController,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            decoration: InputDecoration(
                              hintText: "Last Name",
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter some text';
                              }
                              // user_stat.Last_n = value;
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
