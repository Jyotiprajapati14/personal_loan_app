import 'package:flutter/material.dart';
import 'package:personal_loan_app/Upload_PDF.dart';

class UploadFileScreen extends StatefulWidget {
  const UploadFileScreen({super.key});

  @override
  State<UploadFileScreen> createState() => _UploadFileScreenState();
}

class _UploadFileScreenState extends State<UploadFileScreen> {
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
                        child: Image.asset('lib/assets/images/grid.png',
                            width: 147, height: 147, fit: BoxFit.fill),
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    // SizedBox(height: 10),
                    Column(
                      children: [
                        Text(
                          " Before you proceed,",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14.0,
                            color: Color(0xFF000000),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "...You must have 3 months of bank...\n   statements, starting from { DATE }",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14.0,
                            color: Color(0xFF8B8B8B),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "...Your statements should be Bank...\n   generated and in PDF formate",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14.0,
                            color: Color(0xFF8B8B8B),
                          ),
                        ),
                        SizedBox(height: 30),
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
                              "   How do I get valid e-statement?   ",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff0075FF),
                              ),
                            ),
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
                                builder: (context) => UploadPDFScreen(),
                              ));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffF67676),
                            fixedSize: const Size(220, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: const Text(
                          ' Confirm ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ]),
            ),
          ),
        ));
  }
}
