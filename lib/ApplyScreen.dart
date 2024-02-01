import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_check_box_rounded/flutter_check_box_rounded.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:personal_loan_app/pancard_screen.dart';

class ApplyScreen extends StatefulWidget {
  const ApplyScreen({super.key});

  @override
  State<ApplyScreen> createState() => _ApplyScreenState();
}

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _ApplyScreenState extends State<ApplyScreen> {
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECECEC),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 10, right: 15, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Loan Application form",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              Divider(
                thickness: 2,
                color: Colors.black,
              ),
              Row(
                children: [
                  Text(
                    'Name:',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(width: 88),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 3,
                                    color: Colors.white), //<-- SEE HERE
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Please put your full Name",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Email Adress:',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(width: 40),
                  Expanded(
                    child: Container(
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 0.5,
                          left: 0.12,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 3, color: Colors.white), //<-- SEE HERE
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Phone Number:',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(width: 28),
                  Expanded(
                    child: Container(
                      height: 60,
                      child: IntlPhoneField(
                          //flagsButtonPadding: const EdgeInsets.all(1),
                          dropdownIconPosition: IconPosition.trailing,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 3, color: Colors.white), //<-- SEE HERE
                            ),
                          ),
                          initialCountryCode: 'IN',
                          onChanged: (phone) {
                            print(phone.completeNumber);
                          }),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    ' Adress:',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(width: 78),
                  Expanded(
                    child: Container(
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 3, color: Colors.white), //<-- SEE HERE
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Amount Requested:',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(Icons.currency_rupee),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 3,
                                    color: Colors.white), //<-- SEE HERE
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Please convert currency to its rupees\n equivalent",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    ' Request Date of\n Fund:',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(width: 28),
                  Expanded(
                    child: Container(
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 3, color: Colors.white), //<-- SEE HERE
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    ' Expected date to \n Collect Loan:',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 3, color: Colors.white), //<-- SEE HERE
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    ' Purpose of fund:',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(width: 22),
                  Expanded(
                    child: Container(
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 3, color: Colors.white), //<-- SEE HERE
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text.rich(
                TextSpan(
                  text: ' Click here',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue),
                  children: [
                    TextSpan(
                      text: ' to read loan terms and conditions',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 10,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    ' Do you agree with our\n terms & conditions?:',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(width: 20),
                  CheckBoxRounded(
                    onTap: (bool? value) {},
                    uncheckedColor: Color(0xffFFFFFF),
                    uncheckedWidget: const Icon(
                      Icons.close_rounded,
                      color: Colors.white,
                      size: 20 / 1.2,
                    ),
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Yes",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  CheckBoxRounded(
                    onTap: (bool? value) {},
                    uncheckedColor: Color(0xffFFFFFF),
                    uncheckedWidget: const Icon(
                      Icons.close_rounded,
                      color: Colors.white,
                      size: 20 / 1.2,
                    ),
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "No",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    ' Signature:',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(width: 60),
                  Expanded(
                    child: Container(
                      height: 70,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 3, color: Colors.white), //<-- SEE HERE
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PancardScreen(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffF67676),
                      fixedSize: const Size(250, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  child: const Text(
                    'Save and Continue Later ',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
