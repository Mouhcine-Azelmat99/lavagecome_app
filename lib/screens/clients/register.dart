// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lavagecom_app/constants.dart';

class Register_Client extends StatefulWidget {
  const Register_Client({Key? key}) : super(key: key);

  @override
  State<Register_Client> createState() => _Register_ClientState();
}

class _Register_ClientState extends State<Register_Client> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.fromLTRB(20, 100, 20, 30),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Register",
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
                  "fill out the form to create yout account",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: AuthInputDec(
                        'Username', 'Username', Icon(Icons.person)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
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
                  TextFormField(
                    decoration: AuthInputDec('Confirme Password',
                        'Confirme Password', Icon(Icons.verified)),
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
                      Colors.deepPurpleAccent, "Register", Colors.white, 120,
                      () {
                    Navigator.of(context).pushReplacementNamed('home');
                  }),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spa
                    children: [
                      Expanded(
                          child: Divider(
                        color: Colors.grey[900],
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 7), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Image.asset("assets/icons/facebook.png"),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 7), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Image.asset("assets/icons/google.png"),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Divider(
                        color: Colors.grey[900],
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        "I have already account ? ",
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
                          Navigator.of(context).pushNamed('login_client');
                        },
                        child: Text(
                          "Login",
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
