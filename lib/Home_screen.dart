import 'package:flutter/material.dart';
import 'package:personal_loan_app/Editprofile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF67676),
      body: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditProfileScreen()),
                            );
                          },
                          child: CircleAvatar(
                            radius: 55,
                            backgroundImage: AssetImage(
                              "lib/assets/images/profile.jpg",
                            ),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 40, right: 10, top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Jyoti Prajapati",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "8,536.00",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.0,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "   Available Balance   ",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                height: constraints.maxHeight, // will get by column
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    )),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Stack(children: []),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 32,
                                        child: Image.asset(
                                          "lib/assets/images/mobile.png",
                                          height: 32,
                                          width: 32,
                                        ) //Text
                                        ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Prepaid",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                SizedBox(width: 20),
                                Column(
                                  children: [
                                    CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 32,
                                        child: Image.asset(
                                          "lib/assets/images/gas.png",
                                          height: 32,
                                          width: 32,
                                        ) //Text
                                        ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Gas",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                SizedBox(width: 20),
                                Column(
                                  children: [
                                    CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 32,
                                        child: Image.asset(
                                          "lib/assets/images/Vector.png",
                                          height: 32,
                                          width: 32,
                                        ) //Text
                                        ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Electricity",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: [
                                    CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 32,
                                        child: Image.asset(
                                          "lib/assets/images/tap.png",
                                          height: 32,
                                          width: 32,
                                        ) //Text
                                        ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Water",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                          ],
                        )
                      ],
                    ),
                    Padding(
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
                                            " Loan",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black),
                                          ),
                                          SizedBox(
                                            width: 100,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20, top: 10),
                                      child: Row(
                                        children: [
                                          Image(
                                              image: AssetImage(
                                            "lib/assets/images/money.png",
                                          )),
                                          SizedBox(width: 10),
                                          Text(
                                            "Cash Loan",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          ),
                                          SizedBox(
                                            width: 100,
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              // Navigator.push(
                                              //     context,
                                              //     MaterialPageRoute(
                                              //       builder: (context) =>
                                              //           DoneScreen(),
                                              //     ));
                                            },
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Color(0xffF67676),
                                                fixedSize: const Size(39, 20),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40))),
                                            child: const Text(
                                              'Get ',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20, top: 10),
                                      child: Row(
                                        children: [
                                          const Image(
                                            image: AssetImage(
                                                "lib/assets/images/bag.png"),
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            "Level up Loan",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          ),
                                          SizedBox(
                                            width: 80,
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              // Navigator.push(
                                              //     context,
                                              //     MaterialPageRoute(
                                              //       builder: (context) =>
                                              //           DoneScreen(),
                                              //     ));
                                            },
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Color(0xffF67676),
                                                fixedSize: const Size(39, 20),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40))),
                                            child: const Text(
                                              'Get ',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // SizedBox(height: 20),
                            SizedBox(
                              height: 300,
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
                                            " Asset",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black),
                                          ),
                                          SizedBox(
                                            width: 100,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20, top: 10),
                                      child: Row(
                                        children: [
                                          Image(
                                              image: AssetImage(
                                                  "lib/assets/images/speed.png")),
                                          SizedBox(width: 15),
                                          Text(
                                            "784/900",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          ),
                                          SizedBox(width: 100),
                                          Text(
                                            "Credit score",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20, top: 10),
                                      child: Row(
                                        children: [
                                          const Image(
                                            image: AssetImage(
                                                "lib/assets/images/wallet.png"),
                                          ),
                                          SizedBox(width: 15),
                                          Text(
                                            "7490",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          ),
                                          SizedBox(width: 135),
                                          Text(
                                            "Wallet Money",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20, top: 10),
                                      child: Row(
                                        children: [
                                          const Image(
                                            image: AssetImage(
                                                "lib/assets/images/gift.png"),
                                          ),
                                          SizedBox(width: 15),
                                          Text(
                                            "225",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          ),
                                          SizedBox(width: 140),
                                          Text(
                                            "Gift Card",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20, top: 10),
                                      child: Row(
                                        children: [
                                          const Image(
                                            image: AssetImage(
                                                "lib/assets/images/token.png"),
                                          ),
                                          SizedBox(width: 15),
                                          Text(
                                            "17",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          ),
                                          SizedBox(width: 150),
                                          Text(
                                            "Free Points",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
