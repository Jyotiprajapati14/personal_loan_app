import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:personal_loan_app/rate_screen.dart';

class IntrestRateScreen extends StatefulWidget {
  const IntrestRateScreen({super.key});

  @override
  State<IntrestRateScreen> createState() => _IntrestRateScreenState();
}

TextEditingController emailController = TextEditingController();
TextEditingController dobController = TextEditingController();

class _IntrestRateScreenState extends State<IntrestRateScreen> {
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
                SizedBox(height: 160),
                Text(
                  "Calculate your Interest Rate ",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000)),
                ),
                SizedBox(height: 30),
                Text(
                  " Enter Amount  ",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Amount",
                      hintStyle:
                          Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontSize: 12,
                                color: Color(0xff9796A1),
                                fontWeight: FontWeight.w300,
                              ),
                      prefixIcon: Icon(Icons.currency_rupee),
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
                    if (value!.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                      return 'enter the vaild amount';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                Text(
                  " Enter Date & Year  ",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 1, right: 1),
                  child: TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Date & year",
                        hintStyle:
                            Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  fontSize: 12,
                                  color: Color(0xff9796A1),
                                  fontWeight: FontWeight.w300,
                                ),
                        prefixIcon: Icon(Icons.date_range),
                        contentPadding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Color(0xffDCDCDC))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Color(0xffDCDCDC))),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Color(0xffDCDCDC)))),
                    controller: dobController,
                    readOnly: true,
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1950),
                          lastDate: DateTime(2050));

                      if (pickedDate != null) {
                        dobController.text = pickedDate.toString();
                      }
                    },
                  ),
                )),
                SizedBox(height: 100),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RateScreen(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffF67676),
                        fixedSize: const Size(180, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      ' Calculate Rate ',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 160,
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
