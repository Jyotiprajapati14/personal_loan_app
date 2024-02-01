import 'package:flutter/material.dart';
import 'package:personal_loan_app/Bank_login.dart';
import 'package:personal_loan_app/annual_income.dart';

class HouseTypeScreen extends StatefulWidget {
  const HouseTypeScreen({super.key});

  @override
  State<HouseTypeScreen> createState() => _HouseTypeScreenState();
}

class _HouseTypeScreenState extends State<HouseTypeScreen> {
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;

  _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECECEC),
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Form(
          key: _formKey,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30.0,
                    ),
                    onPressed: () {
                      // Navigate back when the back button is pressed
                      Navigator.of(context).pop();
                    },
                  ),
                  SizedBox(height: 60),
                  Text(
                    "What’s your housing type?",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000)),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AnnualIncomeScreen(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffF3E2D6),
                        fixedSize: const Size(380, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      ' Self-Owned ',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFF8000)),
                    ),
                  ),
                  SizedBox(height: 25),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AnnualIncomeScreen(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffF3E2D6),
                        fixedSize: const Size(380, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      ' Rented ',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFF8000)),
                    ),
                  ),
                  SizedBox(height: 25),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AnnualIncomeScreen(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffF3E2D6),
                        fixedSize: const Size(380, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      ' Parental ',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFF8000)),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AnnualIncomeScreen(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffF3E2D6),
                        fixedSize: const Size(380, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      ' Relatives ',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFF8000)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
