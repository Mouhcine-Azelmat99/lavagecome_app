// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lavagecom_app/constants.dart';


import 'login.dart';

class Register_Client extends StatefulWidget {
  const Register_Client({Key? key}) : super(key: key);

  @override
  State<Register_Client> createState() => _Register_ClientState();
}

class _Register_ClientState extends State<Register_Client> {
   int currentStep = 0;
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[50],
        title: Text(
          'Register',
          style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(primary: Colors.deepPurple)),
        child: Stepper(
          type: StepperType.horizontal,
          currentStep: currentStep,
         onStepContinue: () {
           setState(() => {
                if(currentStep ==2){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const Login_Client()))
                }else {
                    currentStep +=1
                }
            });
          },
          onStepCancel:
              currentStep == 0 ? null : () => setState(() => currentStep -= 1),
          onStepTapped: (step) {
            setState(() {
              currentStep = step;
            });
          },
          steps: [
            Step(
                isActive: currentStep >= 0,
                title: Text(
                  'Personal information',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                content: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(labelText: 'First name'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Last name'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Phone'),
                    ),
                  ],
                )),
            Step(
                isActive: currentStep >= 1,
                title: Text(
                  'Address',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                content: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Building number '),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Street'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'City'),
                    ),
                  ],
                )),
            Step(
                isActive: currentStep >= 2,
                title: Text(
                  'Email address',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                content: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(labelText: 'E-Mail'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Password'),
                    ),
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Confirm Password'),
                    ),

                  ],
                )),
          ],
        ),
      ),
    );
  }
}
