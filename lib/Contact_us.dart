import 'package:flutter/material.dart';
import 'package:personal_loan_app/Done.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

final GlobalKey<FormState> _formKey = GlobalKey();
String email = "";
String password = "";

void _submit() {}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECECEC),
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(right: 25, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
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
                SizedBox(height: 30),
                Text(
                  "Contact Us",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Name'),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                  validator: (value) {
                    // if (value.isEmpty || !value.contains('@')) {
                    //   return 'Invalid email!';
                    // }
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Email Id:'),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  validator: (value) {
                    // if (value.isEmpty && value.length < 7) {
                    //   return 'Invalid password!';
                    // }
                  },
                  onFieldSubmitted: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                ),
                // SizedBox(
                //   height: 10,
                // ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Password:.'),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  validator: (value) {
                    // if (value.isEmpty && value.length < 7) {
                    //   return 'Invalid password!';
                    // }
                  },
                  onFieldSubmitted: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Contact No:'),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  validator: (value) {
                    // if (value.isEmpty && value.length < 7) {
                    //   return 'Invalid password!';
                    // }
                  },
                  onFieldSubmitted: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                ),
                // SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Address:'),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  validator: (value) {
                    // if (value.isEmpty && value.length < 7) {
                    //   return 'Invalid password!';
                    // }
                  },
                  onFieldSubmitted: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                ),
                SizedBox(height: 60),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DoneScreen(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffF67676),
                        fixedSize: const Size(160, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    child: const Text(
                      'Sumit ',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
