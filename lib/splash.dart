import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'main.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(seconds: 5), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MyHomePage(title: 'Blood Donation App',)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 120,
              ),
              Image(
                image: AssetImage('assets/pic1.png'),
                width: 300,
              ),
              Text(
                'Blood Donation',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inconsolata',
                    letterSpacing: 2.0),
              ),
              SizedBox(
                height: 50,
              ),
              SpinKitSpinningLines(
                color: Colors.red,
                size: 50.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
