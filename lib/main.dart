import "package:flutter/material.dart";
import "dart:math";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftdicenumber = 1;
  int rightdicenumber = 1;
  @override
  void diceno() {
    setState(
      () {
        leftdicenumber = Random().nextInt(6) + 1;
        rightdicenumber = Random().nextInt(6) + 1;
      },
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text("Dicee"),
          ),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: TextButton(
                    onPressed: () {
                      diceno();
                    },
                    child: Image(
                      image: AssetImage("images/dice$leftdicenumber.png"),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: TextButton(
                    onPressed: () {
                      diceno();
                    },
                    child: Image(
                      image: AssetImage("images/dice$rightdicenumber.png"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
