import 'package:flutter/material.dart';
import '../constants.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = '/loginScreen';
  const LoginScreen(
      {Key? key, required String title, bool? debuShowCheckedModeBanner})
      : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double heigth = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print(heigth);
    print(width);
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset(
            bgimage,
            height: heigth,
            width: width,
          )
        ],
      ),
    );
  }
}
