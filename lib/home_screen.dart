// stateless  statefl

import 'package:flutter/material.dart';

// colors.red
// Color(0xffhex)
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int color = 0xff181f38;
    int backgroundColor = 0xff080e21;
    int sliderActiveColor = 0xff6900ec;
    int sliderInActiveColor = 0xffc484fa;
    double sliderValue = 100;
    return Scaffold(
      backgroundColor: Color(backgroundColor),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(color),
        title: Text(
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
              padding: EdgeInsets.all(15),
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
                  Row(
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
                  Slider(
                    value: sliderValue,
                    min: 1,
                    max: 200,
                    label: '$sliderValue',
                    activeColor: Color(sliderActiveColor),
                    inactiveColor: Color(sliderInActiveColor),
                    onChanged: (value) {
                      print(value.round());
                    },
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
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
                        Text(
                          'WIEGHT',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '65',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 50,
                              height: 45,
                              child: FloatingActionButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.add,
                                  size: 35,
                                  color: Color(backgroundColor),
                                ),
                                backgroundColor: Color(0xffe5e5e5),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 45,
                              child: FloatingActionButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.minimize,
                                  size: 35,
                                  color: Color(backgroundColor),
                                ),
                                backgroundColor: Color(0xffe5e5e5),
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
                        Text(
                          'Age',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '20',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 50,
                              height: 45,
                              child: FloatingActionButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.add,
                                  size: 35,
                                  color: Color(backgroundColor),
                                ),
                                backgroundColor: Color(0xffe5e5e5),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 45,
                              child: FloatingActionButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.minimize,
                                  size: 35,
                                  color: Color(backgroundColor),
                                ),
                                backgroundColor: Color(0xffe5e5e5),
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
                color: Colors.pink,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextButton(
                onPressed: () {
                  print('00000');
                },
                child: Text(
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
