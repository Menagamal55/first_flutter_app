import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Points Counter'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Team A',
                          style: TextStyle(fontSize: 32),
                        ),
                        FittedBox(
                          child: Text(
                            '$teamAPoints',
                            style: TextStyle(fontSize: 150),
                          ),
                        ),
                        SizedBox(height: 20), // إضافة مسافة بين النقاط والأزرار
                        buildPointButton('Add 1 Point', () {
                          setState(() {
                            teamAPoints++;
                          });
                        }),
                        SizedBox(height: 10),
                        buildPointButton('Add 2 Points', () {
                          setState(() {
                            teamAPoints += 2;
                          });
                        }),
                        SizedBox(height: 10),
                        buildPointButton('Add 3 Points', () {
                          setState(() {
                            teamAPoints += 3;
                          });
                        }),
                      ],
                    ),
                  ),
                  Container(
                    height: 400,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Team B',
                          style: TextStyle(fontSize: 32),
                        ),
                        FittedBox(
                          child: Text(
                            '$teamBPoints',
                            style: TextStyle(fontSize: 150),
                          ),
                        ),
                        SizedBox(height: 20), // إضافة مسافة بين النقاط والأزرار
                        buildPointButton('Add 1 Point', () {
                          setState(() {
                            teamBPoints++;
                          });
                        }),
                        SizedBox(height: 10),
                        buildPointButton('Add 2 Points', () {
                          setState(() {
                            teamBPoints += 2;
                          });
                        }),
                        SizedBox(height: 10),
                        buildPointButton('Add 3 Points', () {
                          setState(() {
                            teamBPoints += 3;
                          });
                        }),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              buildPointButton('Reset', () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              }),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPointButton(String text, VoidCallback onPressed) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        minimumSize: Size(150, 50),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(fontSize: 18, color: Colors.black),
      ),
    );
  }
}
