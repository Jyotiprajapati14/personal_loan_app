import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:personal_loan_app/adharkyc_screen.dart';

class CompleteKycScreen extends StatefulWidget {
  const CompleteKycScreen({super.key});

  @override
  State<CompleteKycScreen> createState() => _CompleteKycScreenState();
}

var _formKey = GlobalKey<FormState>();
var isLoading = false;

_submit() {
  final isValid = _formKey.currentState!.validate();
  if (!isValid) {
    return;
  }
}

class _CompleteKycScreenState extends State<CompleteKycScreen> {
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
                SizedBox(height: 180),
                Text(
                  "Aadhaar Linked Mobile Number Only",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000)),
                ),
                SizedBox(height: 20),
                Text(
                  "Please enter Aadhaar-Linked Number Here  ",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 20,
                ),
                IntlPhoneField(
                  flagsButtonPadding: const EdgeInsets.all(4),
                  dropdownIconPosition: IconPosition.trailing,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Phone",
                      hintStyle:
                          Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontSize: 12,
                                color: Color(0xff9796A1),
                                fontWeight: FontWeight.w300,
                              ),
                      prefixIcon: Icon(Icons.email),
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
                  initialCountryCode: 'IN',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
                SizedBox(height: 30),
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
                        'Please note, mandatory to use Aadhaar linked Mobile\n number Otherwise KYC will not be completed',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
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
                            builder: (context) => AdharKYCScreen(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffF67676),
                        fixedSize: const Size(190, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      ' Confirm ',
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
