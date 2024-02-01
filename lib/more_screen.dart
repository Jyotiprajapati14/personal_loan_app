import 'package:flutter/material.dart';
import 'package:personal_loan_app/ApplyScreen.dart';
import 'package:personal_loan_app/Contact_us.dart';
import 'package:personal_loan_app/FAQ_screen.dart';
import 'package:personal_loan_app/about_us.dart';
import 'package:personal_loan_app/intreset_rate.dart';
import 'package:personal_loan_app/login_screen.dart';
import 'package:personal_loan_app/notification.dart';
import 'package:personal_loan_app/summary.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE67D7A),
      body: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  Container(
                    child: Stack(children: [
                      const CircleAvatar(
                        radius: 60,
                        backgroundImage:
                            AssetImage("lib/assets/images/profile.jpg"),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "      Jyoti Prajapati",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                          color: Color(0xFF0000000),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "      ID: 12367986709",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 12.0,
                          color: Color(0xFF0000000),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  )
                ],
              ),
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.send_time_extension_rounded),
              title: const Text(' Apply Now'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ApplyScreen(),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' Interest Rate '),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IntrestRateScreen(),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.connect_without_contact_sharp),
              title: const Text(' Contact Us '),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ContactUsScreen(),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.summarize_rounded),
              title: const Text(' Loan Summary '),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoanSummary(),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_balance_outlined),
              title: const Text(' About Us '),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutUsScreen(),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text(' FAQ'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FAQPage(),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.notification_add),
              title: const Text('Notification'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NotificatinScreen(),
                    ));
              },
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffF67676),
                    fixedSize: const Size(160, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                child: const Text(
                  'LogOut',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
