import 'dart:async';

import 'package:flutter/material.dart';
import 'Register.dart';
import 'adminpannel.dart';
import 'loginpage.dart';
import 'secondloginpage.dart';
import 'DeliveryAgent.dart';
import 'DeliveryAgentForm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: minor_project(),
      routes: {
        'loginpage': (context) => loginpage(),
        'secondloginpage': (context) => secondloginpage(),
        'Register': (context) => MyRegister(),
        'main': (context) => minor_project(),
        'adminpannel': (context) => adminpannel(),
        'DeliveryAgentForm': (context) => DeliveryAgentForm(),
        'DeliveryAgent': (context) => DeliveryAgent(),
      },
    );
  }
}

class minor_project extends StatefulWidget {
  const minor_project({
    super.key,
  });

  @override
  State<minor_project> createState() => _minor_projectState();
}

class _minor_projectState extends State<minor_project> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => loginpage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan,
        title: Text(
          "WELCOME PAGE",
          style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(171, 202, 247, 3)),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 200, bottom: 250, left: 400, right: 350),
        padding: EdgeInsets.only(top: 50, bottom: 50, left: 100, right: 50),
        decoration: BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 248, 246, 246),
              Color.fromARGB(66, 238, 38, 3)
            ]),
            borderRadius: BorderRadius.circular(300),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(94, 219, 205, 4),
                blurRadius: 5,
                spreadRadius: 10,
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/foodexp.jpg'),
            Text(
              "WELCOME\nFOODEXPRESS",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
