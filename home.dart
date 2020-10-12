import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_minimalist/pages/login.page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bas'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.exit_to_app),
              color: Colors.white,
              onPressed: () {
                signOut(context);
              })
        ],
      ),
      body: Container(
          child: Center(
        child: Column(
          children: <Widget>[Text('Hi')],
        ),
      )),
    );
  }

  void signOut(BuildContext context) {
    firebaseAuth.signOut();
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
        ModalRoute.withName('/'));
  }
}
