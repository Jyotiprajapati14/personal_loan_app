import 'package:flutter/material.dart';
import 'package:flutter_check_box_rounded/flutter_check_box_rounded.dart';

import 'package:personal_loan_app/complete_kyc.dart';
import 'package:personal_loan_app/successful_screen.dart';

class AdharKYCScreen extends StatefulWidget {
  const AdharKYCScreen({super.key});

  @override
  State<AdharKYCScreen> createState() => _AdharKYCScreenState();
}

class _AdharKYCScreenState extends State<AdharKYCScreen> {
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
                // SizedBox(height: 0),
                Center(
                  child: Container(
                    padding: EdgeInsets.only(
                      bottom: 3, // Space between underline and text
                    ),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      color: Colors.black,
                      width: 1.0, // Underline thickness
                    ))),
                    child: Text(
                      "Complete KYC",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 160),
                // _verticalSpacing,
                Row(
                  children: [
                    CheckBoxRounded(
                      onTap: (bool? value) {},
                      uncheckedColor: Color(0xffFF6B00),
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
                      "Aadhaar Card",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 140,
                    ),
                    CheckBoxRounded(
                      onTap: (bool? value) {},
                      uncheckedColor: Color(0xffFF6B00),
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
                      "VID",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Please enter 12 Digits Aadhaar number  ",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000)),
                ),
                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.clear,
                          color: Colors.grey,
                        ),
                      ),
                      hintText: "8788745456",
                      hintStyle:
                          Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontSize: 12,
                                color: Color(0xff9796A1),
                                fontWeight: FontWeight.w300,
                              ),
                      prefixIcon: Icon(Icons.card_membership),
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Color(0xffDCDCDC))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Color(0xffDCDCDC))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Color(0xffDCDCDC)))),
                  onFieldSubmitted: (value) {},
                  validator: (value) {
                    if (value!.length < 16) {
                      return 'Adhar number must be 10 digits';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 40),
                Center(
                  child: TextButton.icon(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          elevation: 5,

                          // adding padding
                          padding: EdgeInsets.all(5),
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0)),
                          backgroundColor: Color(0xffFFD1AF),
                          textStyle: const TextStyle(
                              fontSize: 24, fontStyle: FontStyle.normal)),
                      icon: const Icon(
                        Icons.info,
                        color: Colors.black,
                      ),
                      label: const Text(
                        'Please Keep your Aadhaar linked number handy to\n  receive and fill the OTP.',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                      )),
                ),

                SizedBox(height: 40),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SuccesfulScreen(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffF67676),
                        fixedSize: const Size(190, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      ' Proceed ',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 160,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
