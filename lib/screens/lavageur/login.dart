// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lavagecom_app/constants.dart';

class Login_Lavageur extends StatefulWidget {
  const Login_Lavageur({Key? key}) : super(key: key);

  @override
  State<Login_Lavageur> createState() => _Login_LavageurState();
}

class _Login_LavageurState extends State<Login_Lavageur> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Image.asset("assets/icons/left_arrow.png"),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
          padding: EdgeInsets.fromLTRB(20, 50, 20, 30),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Login as Lavageur",
                style: TextStyle(
                  color: Colors.blue[800],
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.4,
                child: Text(
                  "sign in from here to move the home page",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: AuthInputDec(
                        'Email', 'user@gmail.com', Icon(Icons.email_outlined)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: AuthInputDec(
                        'Password', 'Password', Icon(Icons.password_outlined)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      "Forgot Password",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue[800],
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  kbutton(
                    Colors.deepPurpleAccent,
                    "Login",
                    Colors.white,
                    140,
                    () {
                      Navigator.of(context).pushReplacementNamed('home');
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        "I don't have account ? ",
                        style: TextStyle(
                            // decoration: TextDecoration.underline,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('register_lavageur');
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.blue[800],
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ))
            ],
          )),
    );
  }
}
