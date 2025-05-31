import 'dart:async';
import 'package:flutter/material.dart';
import 'package:taskms/main.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 10),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyApp()), // Ensure MyHome exists
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "BSCS Morning",
              style: TextStyle(color: Colors.black, fontSize: 25,),

            ),
            SizedBox(height: 10),
            Text(
              "IOT QUIZ",
              style: TextStyle(color: Colors.black, fontSize: 25,),
            ),
            const SizedBox(height: 10),
            const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('images/download (4).png'),
            ),
            const SizedBox(height: 10),

            Text(
              "Maryam Amin",
              style: TextStyle(color: Colors.black, fontSize: 25,),
            ),
            SizedBox(height: 10),
            Text(
              "2022-ag-8634",
              style: TextStyle(color: Colors.black, fontSize: 25,),
            ),
            SizedBox(height: 10),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
