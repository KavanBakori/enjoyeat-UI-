import 'package:flutter/material.dart';

void main() => runApp(myhomepage());

class myhomepage extends StatelessWidget {
  const myhomepage({Key key}) : super(key: key);
// This widget is the root
// of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // title: "ListView.builder",
        // theme: ThemeData(primarySwatch: Colors.green),
        debugShowCheckedModeBanner: false,
        // home : new ListViewBuilder(), NO Need To Use Unnecessary New Keyword
        home: Scaffold(
          body: Container(
            color: Colors.white,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 100,
                      child: Image(
                        image: AssetImage('assets/done.gif'),
                      ),
                    ),
                  ),
                  Text(
                    "Payment Successful",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Times new roman',
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "We will inform you after some time",
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'Times new roman',
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
