import 'package:flutter/material.dart';
import 'package:registerapp/register.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget showLogo() {
    return Container(
      width: 120.0,
      height: 120.0,
      child: Image.asset('images/logo.png'),
    );
  }

  Widget showAppName() {
    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'CSC231:agile software engineering',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              color: Colors.green.shade900,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
          ),
          Text(
            'CSC234:mobile application development',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24,
                color: Colors.yellow.shade900,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto'),
          ),
        ],
      ),
    );
  }

  Widget signUpButton() {
    return OutlineButton(
      child: Text('Sign Up'),
      onPressed: () {
        print('You Click Sign Up');
        MaterialPageRoute materialPageRoute =
            MaterialPageRoute(builder: (BuildContext context) => Register());
        Navigator.of(context).push(materialPageRoute);
      },
    );
  }

  Widget signLnButton() {
    return RaisedButton(
      child: Text('Sign ln'),
      onPressed: () {},
    );
  }

  Widget showButton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        signLnButton(),
        SizedBox(
          width: 4.0,
        ),
        signUpButton(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
                colors: [Colors.white, Colors.indigo.shade900], radius: 2.0),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                showLogo(),
                showAppName(),
                SizedBox(
                  height: 6.0,
                ),
                showButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
