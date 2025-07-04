//
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'login.dart';

import 'package:taskms/HomePage.dart';
import 'package:taskms/profilepage.dart';// Make sure this file has class AllNotesScreen or change route accordingly

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Note App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/addNote': (context) => const MyHomePage(),
        '/allNotes': (context) => const MyHomePage(),  // or AddNotePage if that is your class
      },
    );
  }
}

