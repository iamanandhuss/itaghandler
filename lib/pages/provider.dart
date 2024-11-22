import 'package:flutter/material.dart';

class Provider extends StatefulWidget {
  const Provider({
    super.key,
  });
  @override
  State<Provider> createState() => ProviderPage();
}

class ProviderPage extends State<Provider> {
  final TextEditingController _ssidcontroller = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(
            "Change Provider",
            style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.textScaleFactorOf(context) * 18,
                fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05),
              child: const CircleAvatar(
                radius: 45,
                backgroundColor: Color.fromARGB(255, 56, 53, 53),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02),
              child: Text(
                "User ID",
                style: TextStyle(
                    fontSize: MediaQuery.textScaleFactorOf(context) * 22,
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
              "SSID",
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
              controller: _ssidcontroller,
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                hintText: "SSID",
                hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 163, 161, 161),
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery.textScaleFactorOf(context) * 16),
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
              controller: _passwordController,
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 163, 161, 161),
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery.textScaleFactorOf(context) * 16),
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
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.15,
                            right: MediaQuery.of(context).size.width * 0.15,
                            top: MediaQuery.of(context).size.height * .01,
                            bottom: MediaQuery.of(context).size.height * 0.01)),
                  ),
                  onPressed: () {
                    
                    //  Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //             builder: (context) =>  MyApp()));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.1,
                        right: MediaQuery.of(context).size.width * 0.1,
                        top: MediaQuery.of(context).size.height * .01,
                        bottom: MediaQuery.of(context).size.height * 0.01),
                    child: Text(
                      "SAVE",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.textScaleFactorOf(context) * 18,
                          fontWeight: FontWeight.w700),
                    ),
                  )),
            ),
          )
        ]));
  }
}
