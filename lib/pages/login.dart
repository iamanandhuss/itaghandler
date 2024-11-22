// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import './devices.dart';

class Login extends StatefulWidget {
  const Login({
    super.key,
  });
  @override
  State<Login> createState() => LoginPage();
}

class LoginPage extends State<Login> {
  bool _submitted = false;
  final TextEditingController _usernamecontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  String? get _errorText {
    // at any time, we can get the text from _controller.value.text
    final text = _usernamecontroller.value.text;
    final text1 = _passwordcontroller.value.text;
    // Note: you can do your own custom validation here
    // Move this logic this outside the widget for more testable code
    if (text.isEmpty&&text1.isEmpty) {
      return 'Can\'t be empty';
    }
    if (text != "admin"&&text1!="admin") {
      return 'Wrong username and password';
    }
    // return null if the text is valid
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: ValueListenableBuilder(
            valueListenable: _usernamecontroller,
            builder: (context, TextEditingValue value, __) {
              // this entire widget tree will rebuild every time
              // the controller value changes

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.09),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 22,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.09,
                        left: MediaQuery.of(context).size.width * 0.07),
                    child: Text(
                      "UserName",
                      style: TextStyle(
                          fontSize: MediaQuery.textScaleFactorOf(context) * 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.03,
                      left: MediaQuery.of(context).size.width * 0.07,
                      right: MediaQuery.of(context).size.width * 0.07,
                    ),
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.03,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 0,
                          blurRadius: 0.1,
                          offset: const Offset(2, 2),
                        ),
                      ],
                    ),
                    child: TextField(
                      controller: _usernamecontroller,
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        errorText: _submitted ? _errorText : null,
                        hintText: "UserName",
                        hintStyle: TextStyle(
                            color: const Color.fromARGB(255, 163, 161, 161),
                            fontWeight: FontWeight.w400,
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 16),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.04,
                        left: MediaQuery.of(context).size.width * 0.07),
                    child: Text(
                      "Password",
                      style: TextStyle(
                          fontSize: MediaQuery.textScaleFactorOf(context) * 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.03,
                      left: MediaQuery.of(context).size.width * 0.07,
                      right: MediaQuery.of(context).size.width * 0.07,
                    ),
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.03,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 0,
                          blurRadius: 0.1,
                          offset: const Offset(2, 2),
                        ),
                      ],
                    ),
                    child: TextField(
                      controller: _passwordcontroller,
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        errorText: _submitted ? _errorText : null,
                        hintText: "Password",
                        hintStyle: TextStyle(
                            color: const Color.fromARGB(255, 163, 161, 161),
                            fontWeight: FontWeight.w400,
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 16),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.05,
                        bottom: MediaQuery.of(context).size.height * 0.03),
                    child: Center(
                      child: TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.green),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            )),
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width *
                                        0.15,
                                    right: MediaQuery.of(context).size.width *
                                        0.15,
                                    top: MediaQuery.of(context).size.height *
                                        .01,
                                    bottom: MediaQuery.of(context).size.height *
                                        0.01)),
                          ),
                          onPressed: () {
                            setState(() {
                              _submitted = true;
                               });
                              if (_usernamecontroller.text == "admin"&&_passwordcontroller.text=="admin") {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Devices()));
                              }
                           
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.1,
                                right: MediaQuery.of(context).size.width * 0.1,
                                top: MediaQuery.of(context).size.height * .01,
                                bottom:
                                    MediaQuery.of(context).size.height * 0.01),
                            child: Text(
                              "SIGN IN",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.textScaleFactorOf(context) *
                                          18,
                                  fontWeight: FontWeight.w700),
                            ),
                          )),
                    ),
                  )
                ],
              );
            }));
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Wrong Password"),
      content: const Text("Please enter valid username and password."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
