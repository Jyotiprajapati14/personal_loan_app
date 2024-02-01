import 'package:flutter/material.dart';

class FAQPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FAQPageState();
  }
}

class FAQPageState extends State<FAQPage> {
  bool isExpand = false;
  var selected;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isExpand = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        elevation: 0.5,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 24,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Column(children: <Widget>[
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      offset: Offset(1.0, 1.0),
                      spreadRadius: 0.2)
                ]),
                child: Card(
                  elevation: 0,
                  shadowColor: Colors.grey,
                  margin: EdgeInsets.only(
                    bottom: 3,
                  ),
                  child: ExpansionTile(
                      key: Key(index.toString()),
                      backgroundColor: Color(0xfff6f7f9),
                      initiallyExpanded: index == selected,
                      iconColor: Colors.grey,
                      title: Text(
                        'What are the benefits ? ',
                        style: TextStyle(
                            color: Color(0xFF444444),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(
                                top: 10.0, bottom: 10, left: 17, right: 17),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    "Most banks offer online banking services that enable you to pay your bills, transfer money, and access a record of your checking account.\n Transactions from your mobile app. Banking from the comfort of your sofa, at any time of the day or night,makes everything you do with your your ",
                                    style: TextStyle(
                                      color: Color(0xFF444444),
                                      fontSize: 13,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ],
                            ))
                      ],
                      onExpansionChanged: ((newState) {
                        isExpand = newState;
                        print(newState);
                        if (newState)
                          setState(() {
                            Duration(seconds: 20000);
                            selected = index;
                            // isExpand=newState;
                          });
                        else
                          setState(() {
                            selected = -1;
                            // isExpand=newState;
                          });
                        print(selected);
                      })),
                ),
              ),
            ]);
          }),
    );
  }
}
