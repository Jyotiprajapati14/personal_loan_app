import 'package:flutter/material.dart';
import 'package:personal_loan_app/loan_type.dart';
import 'package:personal_loan_app/netbanking.dart';
import 'package:personal_loan_app/upload_files.dart';

class BankloginScreen extends StatefulWidget {
  const BankloginScreen({super.key});

  @override
  State<BankloginScreen> createState() => _BankloginScreenState();
}

class _BankloginScreenState extends State<BankloginScreen> {
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;

  _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
  }

  bool passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFECECEC),
        resizeToAvoidBottomInset: false,
        body: Form(
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
                    SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: Container(
                        // height: 80.0,
                        child: Image.asset('lib/assets/images/bank.png',
                            width: 135, height: 135, fit: BoxFit.fill),
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    // SizedBox(height: 10),
                    Column(
                      children: [
                        Text(
                          " Salary, Business, Primary",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                            color: Color(0xFF0000000),
                          ),
                        ),
                        Text(
                          " Bank Account Statement Required",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                            color: Color(0xFF0000000),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "  Please submit your bank statement in one of the two\n   ways  below, so that we can determine your",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.0,
                            color: Color(0xFF8B8B8B),
                          ),
                        ),
                        Text(
                          " loan amount ",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.0,
                            color: Color(0xFF8B8B8B),
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
                                builder: (context) => NetbankingScreen(),
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
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => UploadFileScreen(),
                              ));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffFFFFFF),
                            fixedSize: const Size(220, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: const Text(
                          ' Upload in PDF Form ',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffF67676)),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ));
  }
}
