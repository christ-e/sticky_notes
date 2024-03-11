import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo_dec/utils/constants/color_constants.dart';
import 'package:todo_dec/utils/constants/image_constants.dart';
import 'package:todo_dec/view/note_screen/note_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => NoteScreen(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.splashcolor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Image.asset(ImageConstants.logo),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Sticky Notes",
              style: TextStyle(
                fontSize: 40,
                // color: ColorConstants.lightGrey,
                fontWeight: FontWeight.w900,
              ),
            )
          ],
        ),
      ),
    );
  }
}
