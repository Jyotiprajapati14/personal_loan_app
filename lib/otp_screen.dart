import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:personal_loan_app/reset_password.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  var _formKey = GlobalKey<FormState>();
  var otpController = OtpFieldController();
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
                Padding(
                  padding:
                      const EdgeInsets.only(right: 10, left: 0.01, top: 10),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30.0,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                SizedBox(height: 120),
                Center(
                  child: Container(
                    padding: EdgeInsets.only(
                      bottom: 3,
                    ),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      color: Colors.black,
                      width: 1.0, // Underline thickness
                    ))),
                    child: Text(
                      "Enter Your OTP Code",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  "We just sent you a message, please open it and\n  enter the OTP code in that message below to\n identify your account.",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000)),
                ),
                SizedBox(height: 20),
                Center(
                  child: OTPTextField(
                      controller: otpController,
                      length: 6,
                      width: MediaQuery.of(context).size.width,
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldWidth: 40,
                      fieldStyle: FieldStyle.box,
                      outlineBorderRadius: 13,
                      style: TextStyle(fontSize: 14),
                      onChanged: (pin) {
                        print("Changed: " + pin);
                      },
                      onCompleted: (pin) {
                        print("Completed: " + pin);
                      }),
                ),
                // Spacer(),
                SizedBox(height: 60),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "Change my Email ",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000),
                                    decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          ResetPasswordScreen(),
                                    ));
                              })
                      ])),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResetPasswordScreen(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffF67676),
                        fixedSize: const Size(160, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
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
