// stateless  statefl

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:p1/result_screen.dart';

import 'colors.dart';

// statful
// context
// rebuild setstate
// nav\
// screen
// 5 state
//
class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int sliderActiveColor = 0xff6900ec;

  int sliderInActiveColor = 0xffc484fa;

  double height = 80.0;

  int age = 10;

  double wieght = 50.0;

  bool isMale = true;

  @override
  void initState() {
    // TODO: implement initState
    // action
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(backgroundColor),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(color),
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // onTap
                  GestureDetector(
                    child: Container(
                      height: 159,
                      width: 139,
                      decoration: BoxDecoration(
                        color: isMale ? Colors.blue : Color(color),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.male,
                            color: Colors.white,
                            size: 70,
                          ),
                          Text(
                            'Male',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      height: 159,
                      width: 139,
                      decoration: BoxDecoration(
                        color: isMale ? Color(color) : Colors.pink,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.female,
                            color: Colors.white,
                            size: 70,
                          ),
                          Text(
                            'Female',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              height: 189,
              width: 334,
              decoration: BoxDecoration(
                color: Color(color),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HIEGHT',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${height.round()}',
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    min: 80,
                    max: 220,
                    activeColor: isMale ? Colors.blue : Colors.pink,
                    onChanged: (value) {
                      // height
                      setState(() {
                        height = value;
                      }); //
                    },
                    value: height,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 159,
                    width: 139,
                    decoration: BoxDecoration(
                      color: Color(color),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'WIEGHT',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '${wieght.round()}',
                          style: const TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 50,
                              height: 45,
                              child: FloatingActionButton(
                                heroTag: 'b2',
                                onPressed: () {
                                  setState(() {
                                    // we = 50+1
                                    // we = 51 + 1
                                    wieght++;
                                    print(wieght);
                                  });
                                },
                                backgroundColor: const Color(0xffe5e5e5),
                                child: Icon(
                                  Icons.add,
                                  size: 35,
                                  color: Color(backgroundColor),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                              height: 45,
                              child: FloatingActionButton(
                                heroTag: 'b1',
                                onPressed: () {
                                  setState(() {
                                    wieght--;
                                    print(wieght);
                                  });
                                },
                                backgroundColor: const Color(0xffe5e5e5),
                                child: Icon(
                                  Icons.remove,
                                  size: 35,
                                  color: Color(backgroundColor),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 159,
                    width: 139,
                    decoration: BoxDecoration(
                      color: Color(color),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Age',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '$age',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 50,
                              height: 45,
                              child: FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                    print(age);
                                  });
                                },
                                backgroundColor: const Color(0xffe5e5e5),
                                child: Icon(
                                  Icons.add,
                                  size: 35,
                                  color: Color(backgroundColor),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                              height: 45,
                              child: FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                    print(age);
                                  });
                                },
                                backgroundColor: Color(0xffe5e5e5),
                                child: Icon(
                                  Icons.remove,
                                  size: 35,
                                  color: Color(backgroundColor),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 65,
              decoration: BoxDecoration(
                color: isMale ? Colors.blue : Colors.pink,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextButton(
                onPressed: () {
                  // context => home
                  var result = wieght / pow(height, 2);

                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ResultScreen(
                      result: result,
                    );
                  }));
                  print(result);
                },
                child: const Text(
                  'CALCULATE',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// bmi
// bmi = weight / pow(height , 2)
