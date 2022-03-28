import 'package:campusstress/login.dart';
import 'package:campusstress/registo.dart';
import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 5, right: 160),
            child: Text(
              "StressOnCampus",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 5, right: 170),
            child: Text(
              "Be in control of your",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1, bottom: 50, right: 240),
            child: Text(
              "mental health",
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "images/undraw_skateboard_d6or.png",
                height: 120,
              ),
              Image.asset(
                "images/undraw_skateboarding_929d.png",
                height: 120,
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.only(top: 60, bottom: 5, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      side: BorderSide(width: 2, color: Colors.green),
                      backgroundColor: Colors.green,
                      primary: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => login()));
                    },
                    child: Text('Sign In'),
                  )
                ],
              )),
          Center(
              child: GestureDetector(
                child: Text(
                  "Não tem conta? Regista-se",
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => registo()));
                },
              ))
        ],
      ),
    );
  }
}
