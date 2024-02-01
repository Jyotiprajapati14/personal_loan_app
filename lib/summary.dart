import 'package:flutter/material.dart';

class LoanSummary extends StatefulWidget {
  const LoanSummary({super.key});

  @override
  State<LoanSummary> createState() => _LoanSummaryState();
}

class _LoanSummaryState extends State<LoanSummary> {
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
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Color(0xFFECECEC),
          centerTitle: true,
          elevation: 0.0,
          title: Text(
            "Loan Summary",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ),
        backgroundColor: const Color(0xFFECECEC),
        resizeToAvoidBottomInset: false,
        body: ListView.builder(
          padding: EdgeInsets.all(9.0),
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // SizedBox(height: 20),
                  SizedBox(
                    height: 220,
                    width: 420,
                    child: Card(
                      margin: EdgeInsets.all(10),
                      color: Color(0xffF3E2D6),
                      shadowColor: Colors.blueGrey,
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 20, left: 20, top: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Personal Loan",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                SizedBox(width: 90),
                                Container(
                                  padding: EdgeInsets.only(
                                    bottom:
                                        2, // Space between underline and text
                                  ),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                    color: Colors.black,
                                    width: 1.0, // Underline thickness
                                  ))),
                                  child: Text(
                                    "Download PDF",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Loan Date",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  width: 110,
                                ),
                                Text(
                                  "    dd/mm/yyyy",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffA1A1A1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Loan Amount",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  width: 110,
                                ),
                                Icon(Icons.currency_rupee),
                                Text(
                                  "2,50,000",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffA1A1A1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Loan ID",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  width: 110,
                                ),
                                Text(
                                  "         557NCR",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffA1A1A1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
