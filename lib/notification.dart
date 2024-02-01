import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class NotificatinScreen extends StatefulWidget {
  const NotificatinScreen({super.key});

  @override
  State<NotificatinScreen> createState() => _NotificatinScreenState();
}

class _NotificatinScreenState extends State<NotificatinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        actions: [],
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0.0,
        title: Center(
          child: Text(
            "Notification",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black),
          ),
        ),
      ),
      backgroundColor: const Color(0xFFECECEC),
      body: Center(
        child: ToggleSwitch(
          customWidths: [60.0, 60.0],
          customHeights: [10.0],
          cornerRadius: 20.0,
          activeBgColors: [
            [Colors.cyan],
            [Colors.redAccent]
          ],
          activeFgColor: Colors.white,
          inactiveBgColor: Colors.grey,
          inactiveFgColor: Colors.white,
          totalSwitches: 2,
          labels: ['Anable', 'Disable'],
          //icons: [null, FontAwesomeIcons.times],
          onToggle: (index) {
            print('switched to: $index');
          },
        ),
      ),
    );
  }
}
