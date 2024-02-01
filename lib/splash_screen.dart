import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:personal_loan_app/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      backgroundColor: Color(0xFFECECEC),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 80.0),
            Center(
              child: Container(
                // height: 80.0,
                child: Image.asset('lib/assets/images/home1.png',
                    width: 147, height: 147, fit: BoxFit.fill),
              ),
            ),
            const SizedBox(
              height: 60.0,
            ),
            Column(
              children: [
                Text(
                  " Personal Loan ",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20.0,
                    color: Color(0xFF0000000),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
