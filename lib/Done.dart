import 'package:flutter/material.dart';

class DoneScreen extends StatefulWidget {
  const DoneScreen({super.key});

  @override
  State<DoneScreen> createState() => _DoneScreenState();
}

class _DoneScreenState extends State<DoneScreen> {
  @override
  Widget build(BuildContext context) {
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
                child: Image.asset('lib/assets/images/check-mark.png',
                    width: 147, height: 147, fit: BoxFit.fill),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Column(
              children: [
                Text(
                  " Done Your Contact ",
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
