import 'package:flutter/material.dart';
import 'dart:io';

/// SECTION 3 FLUTTER BASICS AGE CALUCULATING APP
/// main function call my app which exist in material app w 3mltlo run
void main() {
  runApp(MyApp());
}

//class have a state
class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class AgeCalculator {
  static int age;
  AgeCalculator(int year) {
    print("Enter your Birth Year");
    int birthyear = year;
    age = DateTime.now().year - birthyear;
    print("Your age is = $age Years Old");
  }
}

// Variables declaration
class MyAppState extends State<MyApp> {
  bool passwordvisible = true;
  var b1 = Colors.blue;
  var b = Colors.black;
  var w = Colors.white;
  var c = Colors.cyan;
  var mycontroller = TextEditingController();
  int str = 0;

  // This widget is the root of your application.
  @override
  // function to bulid everything in my app and return type is widget because everything
  // in flutter is widget
  // scafold is a widget contain my whole page of application
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Title"),
          backgroundColor: Colors.yellowAccent,
        ),
        body: Container(
            height: double.infinity,
            color: b,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: b,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 3,
                            color: b1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: "Birth Year",
                        labelStyle: TextStyle(
                          fontSize: 30,
                          color: c,
                        ),
                        hintText: "Enter Your Birth Date",
                        hintStyle: TextStyle(fontSize: 20, color: w),
                      ),
                      style: TextStyle(
                        color: w,
                      ),
                      controller: mycontroller,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    child: RaisedButton(
                      child: Text(
                        "Get Value",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () => setState(() {
                        // str = mycontroller.text;
                        AgeCalculator(int.parse(mycontroller.text));
                        str = AgeCalculator.age;
                      }),
                      color: w,
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    child: Text(
                      "Yor age is $str Years old",
                      style: TextStyle(
                        fontSize: 20,
                        color: w,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )),
        floatingActionButton: FloatingActionButton(
          backgroundColor: w,
          onPressed: () => setState(() {
            b = b == Colors.black ? Colors.white : Colors.black;
            w = w == Colors.white ? Colors.black : Colors.white;
          }),
        ),
      ),
    );
  }
}
// DonE OF SECTION 3 FLUTTER BASICS
