// ignore_for_file: prefer_const_constructors, unnecessary_string_escapes

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lavagecom_app/constants.dart';
import 'package:lavagecom_app/screens/lavageur/login.dart';

class Register_Lavageur extends StatefulWidget {
  const Register_Lavageur({Key? key}) : super(key: key);

  @override
  State<Register_Lavageur> createState() => _Register_LavageurState();
}

class _Register_LavageurState extends State<Register_Lavageur> {
  TimeOfDay timeOp = TimeOfDay(hour: 10, minute: 30);
  TimeOfDay timeCl = TimeOfDay(hour: 10, minute: 30);
  PickedFile? _imageFile;
  final ImagePicker _picker = ImagePicker();

  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    // final hoursOp = timeOp.hour.toString().padLeft(2, '0');
    // final minutesOp = timeOp.minute.toString().padLeft(2, '0');
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
                  if (currentStep == 3)
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login_Lavageur()))
                    }
                  else
                    {currentStep += 1}
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
                  'My services',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                content: Column(
                  children: <Widget>[
                    imageLogo(),
                     SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              '${timeOp.hour}:${timeOp.minute}',
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                              child: Text('Select opening time'),
                              onPressed: () async {
                                TimeOfDay? newTime = await showTimePicker(
                                  context: context,
                                  initialTime: timeOp,
                                );
                                if (newTime == null) return;

                                setState(() => timeOp = newTime);
                              },
                            ), 
                             SizedBox(
                      height: 20,
                    ),
                          ],
                        ),
                        Column(children: <Widget>[
                          Text(
                            '${timeCl.hour}:${timeCl.minute}',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            child: Text('Select closing time'),
                            onPressed: () async {
                              TimeOfDay? newTime = await showTimePicker(
                                context: context,
                                initialTime: timeCl,
                              );
                              if (newTime == null) return;

                              setState(() => timeCl = newTime);
                            },
                          ),
                           SizedBox(
                      height: 20,
                    ),
                        ]),
                      ],
                    ),
                    Text(
                      'Packs',
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.blueGrey,),
                    ),
                    SizedBox(
                      height: 20,
                    ),

//debut de la partie creant le probleme et dont la fin est indiquee ci-dessous.....
                    Row(
                      children: [
                      Form(
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextFormField(
                                decoration: InputDecoration(
                              labelText: 'Pack name',
                            )),
                            SizedBox(
                              height: 15.0,
                            ),
                            TextFormField(
                                decoration: InputDecoration(
                              labelText: 'Description',
                            )),
                            SizedBox(
                              height: 15.0,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextFormField(
                              decoration:
                                  InputDecoration(labelText: 'Duration'),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            TextFormField(
                                decoration: InputDecoration(
                              labelText: 'The average price',
                            )),
                            SizedBox(
                              height: 15.0,
                            ),
                          ],
                        ),
                      ]),
                    )
                      ],
                    ),

 //fin de la partie creant le probleme......
    
 
            
                  ],
                )),
            Step(
                isActive: currentStep >= 3,
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

  Widget imageLogo() {
    return Center(
      child: Stack(
        children: <Widget>[
          CircleAvatar(
            radius: 40.0,
            // ignore: unnecessary_null_comparison
            backgroundImage: _imageFile == null
                ? AssetImage("assets\icons\logo.png")
                : FileImage(File(_imageFile!.path)) as ImageProvider,
          ),
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: ((builder) => bottomSheet()),
                );
              },
              child: Icon(Icons.camera_alt, color: Colors.black, size: 19.0),
            ),
          )
        ],
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      child: Column(
        children: <Widget>[
          Text(
            "Choose Logo photo",
            style: TextStyle(
              fontSize: 50,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            TextButton.icon(
              icon: Icon(Icons.camera),
              onPressed: () {
                takePhoto(ImageSource.camera);
              },
              label: Text("Camera"),
            ),
            TextButton.icon(
              icon: Icon(Icons.image),
              onPressed: () {
                takePhoto(ImageSource.gallery);
              },
              label: Text("Gallery"),
            )
          ]),
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    // ignore: deprecated_member_use
    final PickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = PickedFile!;
    });
  }
}
