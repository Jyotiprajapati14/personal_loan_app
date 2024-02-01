import 'package:flutter/material.dart';

class RateScreen extends StatefulWidget {
  const RateScreen({super.key});

  @override
  State<RateScreen> createState() => _RateScreenState();
}

class _RateScreenState extends State<RateScreen> {
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
              SizedBox(height: 130),
              Text(
                "Calculated Rate",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              SizedBox(height: 60),
              Row(
                children: [
                  Text(
                    'Interest Rate:',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(width: 60),
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
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    'Payable Amount:',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(width: 35),
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
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    ' EMI :',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(width: 105),
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
            ],
          ),
        ),
      ),
    );
  }
}
