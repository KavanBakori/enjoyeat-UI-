import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fruithero/homepage.dart';
import 'package:fruithero/thank.dart';

class dosa extends StatefulWidget {
  const dosa({Key key}) : super(key: key);

  @override
  State<dosa> createState() => _dosaState();
}

class _dosaState extends State<dosa> {
  int _spitemCount = 0;
  int _mditemCount = 0;
  int _maitemCount = 0;
  int _goitemCount = 0;
  int _dfitemCount = 0;

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
        backgroundColor: Color.fromARGB(141, 235, 173, 16),
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
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color.fromARGB(255, 0, 255, 8),
                    ),
                    child: Center(
                      child: Text(
                        "Low",
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
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color.fromARGB(54, 255, 238, 0),
                    ),
                    child: Center(
                      child: Text(
                        "Medium",
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
                                        AssetImage('assets/dosa.jpg'),
                                    radius: 67,
                                  ),
                                  Text("Dosa Spot ",
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text("Simple Paper",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("\₹\40/-",
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
                                          AssetImage('assets/paper.webp'),
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
                                              if (_spitemCount != 0)
                                                _spitemCount--;
                                            }),
                                            icon: Icon(Icons.remove),
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                        Text(
                                          _spitemCount.toString(),
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
                                              _spitemCount++;
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
                                  Text("Masala Dosa",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("\₹\80/-",
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
                                          AssetImage('assets/masala.webp'),
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
                                              if (_mditemCount != 0)
                                                _mditemCount--;
                                            }),
                                            icon: Icon(Icons.remove),
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                        Text(
                                          _mditemCount.toString(),
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
                                              _mditemCount++;
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
                                  Text("Mysore Masala",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("\₹\90/-",
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
                                          AssetImage('assets/Mysore.jpg'),
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
                                              if (_maitemCount != 0)
                                                _maitemCount--;
                                            }),
                                            icon: Icon(Icons.remove),
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                        Text(
                                          _maitemCount.toString(),
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
                                              _maitemCount++;
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
                                  Text("    Gotalo          ",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("\₹\120/-",
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
                                          AssetImage('assets/gotalo.jpg'),
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
                                              if (_goitemCount != 0)
                                                _goitemCount--;
                                            }),
                                            icon: Icon(Icons.remove),
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                        Text(
                                          _goitemCount.toString(),
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
                                              _goitemCount++;
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
                                  Text("    Dosa Fry       ",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("\₹\100/-",
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
                                          AssetImage('assets/dosafry.jpg'),
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
                                              if (_dfitemCount != 0)
                                                _dfitemCount--;
                                            }),
                                            icon: Icon(Icons.remove),
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                        Text(
                                          _dfitemCount.toString(),
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
                                              _dfitemCount++;
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
                          "Pay (${(_spitemCount * 40) + (_mditemCount * 80) + (_maitemCount * 90) + (_goitemCount * 120) + (_dfitemCount * 100)} ₹)",
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
