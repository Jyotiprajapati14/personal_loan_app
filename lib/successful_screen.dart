import 'package:flutter/material.dart';
import 'package:personal_loan_app/loan_type.dart';

class SuccesfulScreen extends StatefulWidget {
  const SuccesfulScreen({super.key});

  @override
  State<SuccesfulScreen> createState() => _SuccesfulScreenState();
}

class _SuccesfulScreenState extends State<SuccesfulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECECEC),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50.0),
            Center(
              child: Container(
                // height: 80.0,
                child: Image.asset('lib/assets/images/susses.png',
                    width: 342, height: 342, fit: BoxFit.fill),
              ),
            ),
            const SizedBox(
              height: 60.0,
            ),
            Column(
              children: [
                Text(
                  " KYC completed successfully",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                    color: Color(0xFF0000000),
                  ),
                ),
                Text(
                  "authenticated!",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                    color: Color(0xFF0000000),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 200,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoanTypeScreen(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffF67676),
                    fixedSize: const Size(220, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  ' Go to Cash Loan ',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
