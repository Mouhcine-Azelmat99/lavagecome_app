// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lavagecom_app/constants.dart';
import 'package:lavagecom_app/widgets/pageview/page1.dart';
import 'package:lavagecom_app/widgets/pageview/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/pageview/page2.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                child: SvgPicture.asset(
                    "assets/images/undraw_welcome_cats_thqn.svg"),
              ),
              flex: 2,
            ),
            Text(
              "Get started",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            Expanded(
              child: PageView(
                controller: _controller,
                children: [
                  Page1(),
                  Page2(),
                  Page3(),
                ],
              ),
            ),
            SmoothPageIndicator(controller: _controller, count: 3),
            SizedBox(
              height: 25,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: kbutton(
                    Colors.deepPurpleAccent,
                    "Lavageur",
                    Colors.white,
                    50,
                    () {
                      Navigator.of(context).pushNamed('login_lavageur');
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                    width: double.infinity,
                    child: kbutton(
                      Colors.blue[200],
                      "Client",
                      Colors.black,
                      50,
                      () {
                        Navigator.of(context).pushNamed('login_client');
                      },
                    )),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
