import 'package:flutter/material.dart';
import 'package:flutter_check_box_rounded/flutter_check_box_rounded.dart';
import 'package:personal_loan_app/Home_screen.dart';

class NetbankingScreen extends StatefulWidget {
  const NetbankingScreen({super.key});

  @override
  State<NetbankingScreen> createState() => _NetbankingScreenState();
}

TextEditingController costomrController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _NetbankingScreenState extends State<NetbankingScreen> {
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
                    // SizedBox(height: 10),
                    SizedBox(height: 130),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            // color: Colors.black,
                            child: Text(
                              " Login to Net Banking",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff000000)),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Customer ID/ User ID",
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontSize: 12,
                                    color: Color(0xff9796A1),
                                    fontWeight: FontWeight.w300,
                                  ),
                              prefixIcon: Icon(Icons.card_giftcard),
                              contentPadding:
                                  EdgeInsets.fromLTRB(20, 10, 20, 10),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:
                                      BorderSide(color: Color(0xffDCDCDC))),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:
                                      BorderSide(color: Color(0xffDCDCDC))),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:
                                      BorderSide(color: Color(0xffDCDCDC)))),
                          onFieldSubmitted: (value) {},
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value)) {
                              return 'Please enter Customer ID/ User ID';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            // color: Colors.black,
                            child: Text(
                              " Forgot Customer ID? ",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff0075FF)),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 1, right: 1),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: "Password/ Ipin ",
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        fontSize: 12,
                                        color: Color(0xff9796A1),
                                        fontWeight: FontWeight.w300,
                                      ),
                                  prefixIcon: Icon(Icons.lock),
                                  contentPadding:
                                      EdgeInsets.fromLTRB(30, 10, 30, 10),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide:
                                          BorderSide(color: Color(0xffDCDCDC))),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide:
                                          BorderSide(color: Color(0xffDCDCDC))),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(
                                          color: Color(0xffDCDCDC)))),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            // color: Colors.black,
                            child: Text(
                              " Forgot Password/ Ipin? ",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff0075FF)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                      ],
                    ),
                    Center(
                      child: Row(
                        children: [
                          CheckBoxRounded(
                            onTap: (bool? value) {},
                            uncheckedColor: Color(0xffFF6B00),
                            uncheckedWidget: const Icon(
                              Icons.close_rounded,
                              color: Colors.white,
                              size: 20 / 1.4,
                            ),
                            size: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text.rich(
                            TextSpan(
                              text: 'Use Virtual  Keyboard for Password ',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff696969)),
                              // children: <TextSpan>[
                              // ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffF67676),
                            fixedSize: const Size(350, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: const Text(
                          ' Login ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ));
  }
}
