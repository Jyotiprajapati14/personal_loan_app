import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:personal_loan_app/adharkyc_screen.dart';
import 'package:personal_loan_app/complete_kyc.dart';

class PancardScreen extends StatefulWidget {
  const PancardScreen({super.key});

  @override
  State<PancardScreen> createState() => _PancardScreenState();
}

TextEditingController emailController = TextEditingController();
TextEditingController dobController = TextEditingController();
TextEditingController panController = TextEditingController();
TextEditingController intialdateval = TextEditingController();

class _PancardScreenState extends State<PancardScreen> {
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
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(
                          top: 30,
                          bottom: 3, // Space between underline and text
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          color: Colors.black,
                          width: 1.0, // Underline thickness
                        ))),
                        child: Text(
                          "PAN Card",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 60),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            // color: Colors.black,
                            child: Text(
                              " PAN Number",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000)),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "**** **** 4562",
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
                              return 'Please enter PAN number';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            // color: Colors.black,
                            child: Text(
                              " Date of Birth",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000)),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Center(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 1, right: 1),
                          child: TextFormField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Date",
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontSize: 12,
                                      color: Color(0xff9796A1),
                                      fontWeight: FontWeight.w300,
                                    ),
                                prefixIcon: Icon(Icons.date_range),
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
                                    borderSide:
                                        BorderSide(color: Color(0xffDCDCDC)))),
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
                        SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                // color: Colors.black,
                                child: Text(
                                  " Email",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff000000)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Email",
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontSize: 12,
                                    color: Color(0xff9796A1),
                                    fontWeight: FontWeight.w300,
                                  ),
                              prefixIcon: Icon(Icons.email),
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
                              return 'Please enter Email Id';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 60),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CompleteKycScreen(),
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
                    SizedBox(height: 10),
                  ]),
            ),
          ),
        ));
  }
}
