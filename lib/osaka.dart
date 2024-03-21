import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fruithero/homepage.dart';
import 'package:fruithero/thank.dart';

class osaka extends StatefulWidget {
  const osaka({Key key}) : super(key: key);

  @override
  State<osaka> createState() => _osakaState();
}

class _osakaState extends State<osaka> {
  int _hitemCount = 0;
  int _gitemCount = 0;
  int _sitemCount = 0;
  int _ritemCount = 0;
  int _bitemCount = 0;

  int _person = 1;
  var _myColorOne = Colors.grey;
  var _myColorTwo = Colors.grey;
  var _myColorThree = Colors.grey;
  var _myColorFour = Colors.grey;
  var _myColorFive = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage('assets/tea-back.jpg'),
      //     fit: BoxFit.cover,
      //   ),
      // ),
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 85, 43, 28),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Row(
                children: [
                  Text(
                    "         Current Queue     ",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15.0,
                        color: Colors.white),
                  ),
                  Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color.fromARGB(45, 0, 255, 8),
                    ),
                    child: Center(
                      child: Text(
                        "Low",
                        style: TextStyle(
                          fontFamily: 'Times new roman',
                          fontSize: 17,
                          color: Color.fromARGB(142, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color.fromARGB(255, 255, 238, 0),
                    ),
                    child: Center(
                      child: Text(
                        "Medium",
                        style: TextStyle(
                          fontFamily: 'Times new roman',
                          fontSize: 17,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color.fromARGB(146, 247, 132, 132),
                    ),
                    child: Center(
                      child: Text(
                        "High",
                        style: TextStyle(
                          fontFamily: 'Times new roman',
                          fontSize: 17,
                          color: Color.fromARGB(142, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height - 10.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent),
            Positioned(
              top: 75.0,
              child: Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 0, 0, 0),
                              blurRadius: 55.0, // soften the shadow
                              spreadRadius: 3.0, //extend the shadow
                              offset: Offset(
                                8.0, // Move to right 5  horizontally
                                5.0, // Move to bottom 5 Vertically
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45.0),
                            topRight: Radius.circular(45.0),
                          ),
                          color: Color.fromARGB(255, 222, 222, 222)),
                      height: 1000,
                      width: MediaQuery.of(context).size.width),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 100, left: 20, right: 20, bottom: 20),
              child: ListView(
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.black,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 255, 255, 255),
                                blurRadius: 5.0, // soften the shadow
                                spreadRadius: 1.0, //extend the shadow
                                offset: Offset(
                                  1.0, // Move to right 5  horizontally
                                  1.0, // Move to bottom 5 Vertically
                                ),
                              )
                            ],
                          ),
                          height: 250,
                          width: 350,
                          // color: Color.fromARGB(255, 255, 255, 255),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/tea.jpg'),
                                    radius: 67,
                                  ),
                                  Text("Osaka Tea Shop",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Rate Our Shop",
                                      style: TextStyle(
                                          fontFamily: 'Times new roman',
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold)),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        new IconButton(
                                          icon: new Icon(Icons.star),
                                          onPressed: () => setState(() {
                                            _myColorOne = Colors.orange;
                                            _myColorTwo = Colors.grey;
                                            _myColorThree = Colors.grey;
                                            _myColorFour = Colors.grey;
                                            _myColorFive = Colors.grey;
                                          }),
                                          color: _myColorOne,
                                        ),
                                        new IconButton(
                                          icon: new Icon(Icons.star),
                                          onPressed: () => setState(() {
                                            _myColorOne = Colors.orange;
                                            _myColorTwo = Colors.orange;
                                            _myColorThree = Colors.grey;
                                            _myColorFour = Colors.grey;
                                            _myColorFive = Colors.grey;
                                          }),
                                          color: _myColorTwo,
                                        ),
                                        new IconButton(
                                          icon: new Icon(Icons.star),
                                          onPressed: () => setState(() {
                                            _myColorOne = Colors.orange;
                                            _myColorTwo = Colors.orange;
                                            _myColorThree = Colors.orange;
                                            _myColorFour = Colors.grey;
                                            _myColorFive = Colors.grey;
                                          }),
                                          color: _myColorThree,
                                        ),
                                        new IconButton(
                                          icon: new Icon(Icons.star),
                                          onPressed: () => setState(() {
                                            _myColorOne = Colors.orange;
                                            _myColorTwo = Colors.orange;
                                            _myColorThree = Colors.orange;
                                            _myColorFour = Colors.orange;
                                            _myColorFive = Colors.grey;
                                          }),
                                          color: _myColorFour,
                                        ),
                                        new IconButton(
                                          icon: new Icon(Icons.star),
                                          onPressed: () => setState(() {
                                            _myColorOne = Colors.orange;
                                            _myColorTwo = Colors.orange;
                                            _myColorThree = Colors.orange;
                                            _myColorFour = Colors.orange;
                                            _myColorFive = Colors.orange;
                                          }),
                                          color: _myColorFive,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "How Many Persons",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.black,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 83, 83, 83),
                                blurRadius: 3.0, // soften the shadow
                                spreadRadius: 0, //extend the shadow
                                offset: Offset(
                                  1.0, // Move to right 5  horizontally
                                  1.0, // Move to bottom 5 Vertically
                                ),
                              )
                            ],
                          ),
                          child: Container(
                            height: 50,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: IconButton(
                                    onPressed: () => setState(() {
                                      if (_person != 1) _person--;
                                    }),
                                    icon: Icon(Icons.remove),
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  _person.toString(),
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 32.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      borderRadius: BorderRadius.circular(40)),
                                  child: IconButton(
                                    onPressed: () => setState(() => _person++),
                                    icon: Icon(Icons.add),
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          height: 70,
                          width: 350,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Give Us Your Order",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 83, 83, 83),
                              blurRadius: 3.0, // soften the shadow
                              spreadRadius: 0, //extend the shadow
                              offset: Offset(
                                1.0, // Move to right 5  horizontally
                                1.0, // Move to bottom 5 Vertically
                              ),
                            )
                          ],
                        ),
                        child: Container(
                          height: 500,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text("Herbal Tea",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                      "Improves Metabolic Processes\nStrengthens the nervous System",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text("-Helps Fight Stress-",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Text("\₹\20/-",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 27.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green)),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          blurRadius: 3.0, // soften the shadow
                                          spreadRadius: 1.0, //extend the shadow
                                          offset: Offset(
                                            1.0, // Move to right 5  horizontally
                                            1.0, // Move to bottom 5 Vertically
                                          ),
                                        )
                                      ],
                                    ),
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/Herbal.jpg'),
                                      radius: 60,
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 110,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 150,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          child: IconButton(
                                            onPressed: () => setState(() {
                                              if (_hitemCount != 0)
                                                _hitemCount--;
                                            }),
                                            icon: Icon(Icons.remove),
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                        Text(
                                          _hitemCount.toString(),
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22.0,
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          child: IconButton(
                                            onPressed: () => setState(() {
                                              _hitemCount++;
                                            }),
                                            icon: Icon(Icons.add),
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        height: 200,
                        width: 350,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 83, 83, 83),
                              blurRadius: 3.0, // soften the shadow
                              spreadRadius: 0, //extend the shadow
                              offset: Offset(
                                1.0, // Move to right 5  horizontally
                                1.0, // Move to bottom 5 Vertically
                              ),
                            )
                          ],
                        ),
                        child: Container(
                          height: 500,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text("Green Tea   ",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                      "   Promotes Weight Loss\n  Slows the aging process       ",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text("Vitamins:-C,P,B,K",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Text("\₹\20/-",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 27.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green)),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          blurRadius: 3.0, // soften the shadow
                                          spreadRadius: 1.0, //extend the shadow
                                          offset: Offset(
                                            1.0, // Move to right 5  horizontally
                                            1.0, // Move to bottom 5 Vertically
                                          ),
                                        )
                                      ],
                                    ),
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/green.jpg'),
                                      radius: 60,
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 110,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 150,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          child: IconButton(
                                            onPressed: () => setState(() {
                                              if (_gitemCount != 0)
                                                _gitemCount--;
                                            }),
                                            icon: Icon(Icons.remove),
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                        Text(
                                          _gitemCount.toString(),
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22.0,
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          child: IconButton(
                                            onPressed: () => setState(() {
                                              _gitemCount++;
                                            }),
                                            icon: Icon(Icons.add),
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        height: 200,
                        width: 350,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 83, 83, 83),
                              blurRadius: 3.0, // soften the shadow
                              spreadRadius: 0, //extend the shadow
                              offset: Offset(
                                1.0, // Move to right 5  horizontally
                                1.0, // Move to bottom 5 Vertically
                              ),
                            )
                          ],
                        ),
                        child: Container(
                          height: 500,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text("Simple Milk Tea",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold)),
                                  // SizedBox(
                                  //   height: 5,
                                  // ),
                                  // Text("",
                                  //     style: TextStyle(
                                  //         fontFamily: 'Montserrat',
                                  //         fontSize: 13.0,
                                  //         fontWeight: FontWeight.bold,
                                  //         color: Colors.grey)),
                                  // SizedBox(
                                  //   height: 20,
                                  // ),
                                  // Text("--",
                                  //     style: TextStyle(
                                  //         fontFamily: 'Montserrat',
                                  //         fontSize: 10.0,
                                  //         fontWeight: FontWeight.bold,
                                  //         color: Color.fromARGB(255, 0, 0, 0))),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("\₹\15/-",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 27.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green)),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          blurRadius: 3.0, // soften the shadow
                                          spreadRadius: 1.0, //extend the shadow
                                          offset: Offset(
                                            1.0, // Move to right 5  horizontally
                                            1.0, // Move to bottom 5 Vertically
                                          ),
                                        )
                                      ],
                                    ),
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/milk.jpg'),
                                      radius: 60,
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 110,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 150,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          child: IconButton(
                                            onPressed: () => setState(() {
                                              if (_sitemCount != 0)
                                                _sitemCount--;
                                            }),
                                            icon: Icon(Icons.remove),
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                        Text(
                                          _sitemCount.toString(),
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22.0,
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          child: IconButton(
                                            onPressed: () => setState(() {
                                              _sitemCount++;
                                            }),
                                            icon: Icon(Icons.add),
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        height: 200,
                        width: 350,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 83, 83, 83),
                              blurRadius: 3.0, // soften the shadow
                              spreadRadius: 0, //extend the shadow
                              offset: Offset(
                                1.0, // Move to right 5  horizontally
                                1.0, // Move to bottom 5 Vertically
                              ),
                            )
                          ],
                        ),
                        child: Container(
                          height: 500,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text("Red Tea",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                      "Contains much vitamins C   \nImproves the mood",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text("-Reduces the level of sugar-",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Text("\₹\20/-",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 27.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green)),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          blurRadius: 3.0, // soften the shadow
                                          spreadRadius: 1.0, //extend the shadow
                                          offset: Offset(
                                            1.0, // Move to right 5  horizontally
                                            1.0, // Move to bottom 5 Vertically
                                          ),
                                        )
                                      ],
                                    ),
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/red.jpg'),
                                      radius: 60,
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 110,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 150,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          child: IconButton(
                                            onPressed: () => setState(() {
                                              if (_ritemCount != 0)
                                                _ritemCount--;
                                            }),
                                            icon: Icon(Icons.remove),
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                        Text(
                                          _ritemCount.toString(),
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22.0,
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          child: IconButton(
                                            onPressed: () => setState(() {
                                              _ritemCount++;
                                            }),
                                            icon: Icon(Icons.add),
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        height: 200,
                        width: 350,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 83, 83, 83),
                              blurRadius: 3.0, // soften the shadow
                              spreadRadius: 0, //extend the shadow
                              offset: Offset(
                                1.0, // Move to right 5  horizontally
                                1.0, // Move to bottom 5 Vertically
                              ),
                            )
                          ],
                        ),
                        child: Container(
                          height: 500,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text("Black Tea",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                      "   Improves the\n   functioning of the brain     ",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text("-Delaying the aging process-",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Text("\₹\20/-",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 27.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green)),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          blurRadius: 3.0, // soften the shadow
                                          spreadRadius: 1.0, //extend the shadow
                                          offset: Offset(
                                            1.0, // Move to right 5  horizontally
                                            1.0, // Move to bottom 5 Vertically
                                          ),
                                        )
                                      ],
                                    ),
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/black.jpg'),
                                      radius: 60,
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 110,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 150,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          child: IconButton(
                                            onPressed: () => setState(() {
                                              if (_bitemCount != 0)
                                                _bitemCount--;
                                            }),
                                            icon: Icon(Icons.remove),
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                        Text(
                                          _bitemCount.toString(),
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22.0,
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          child: IconButton(
                                            onPressed: () => setState(() {
                                              _bitemCount++;
                                            }),
                                            icon: Icon(Icons.add),
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        height: 200,
                        width: 350,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => myhomepage()));
                        },
                        child: Text(
                          "Pay (${(_hitemCount * 20) + (_gitemCount * 20) + (_sitemCount * 15) + (_ritemCount * 20) + (_bitemCount * 20)} ₹)",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
