import 'package:flutter/material.dart';
import 'package:personal_loan_app/Home_screen.dart';
import 'package:personal_loan_app/loan_type.dart';
import 'package:personal_loan_app/more_screen.dart';

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    LoanTypeScreen(),
    MoreScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD9D9D9),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('lib/assets/images/mat.png'),
              color: Color(0xFF000000),
            ),
            label: "Home",
            backgroundColor: Color(0xFFD9D9D9),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('lib/assets/images/earing.png'),
              color: Color(0xFF000000),
            ),
            label: "Loan",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('lib/assets/images/more.png'),
              color: Color(0xFF000000),
            ),
            label: "More",
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black.withOpacity(0.6),
        iconSize: 35,
        onTap: _onItemTapped,
        elevation: 5,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }
}
