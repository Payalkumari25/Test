import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String dropdownYear = '2021';
  String dropDownMonth = 'May';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.only(
                        top: 100
                    ),
                    child: Text(
                      'Customize',
                      style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Text(
                    'When are you Planning your GRE?',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50.0,
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.white12,
                margin: EdgeInsets.symmetric(
                    horizontal: 25.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.alarm_on_rounded,
                      color: Colors.blueGrey,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '3 Months',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.white12,
                margin: EdgeInsets.symmetric(
                    horizontal: 25.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.alarm_on_rounded,
                      color: Colors.blueGrey,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '6 Months',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.white12,
                margin: EdgeInsets.symmetric(
                    horizontal: 25.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.alarm_on_rounded,
                      color: Colors.blueGrey,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '9 Months',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.white12,
                margin: EdgeInsets.symmetric(
                    horizontal: 25.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.alarm_on_rounded,
                      color: Colors.blueGrey,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '12 Months',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,

                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('(OR)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                  ),
                ),
              ),
              SizedBox(height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Months',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Source Sans Pro',
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        child: DropdownButton<String>(
                          value: dropDownMonth,
                          icon: const Icon(Icons.arrow_drop_down_outlined),
                          isExpanded: true,
                          iconSize: 30,
                          elevation: 16,
                          style: const TextStyle(color: Colors.blueGrey),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropDownMonth = newValue!;
                            });
                          },
                          items: <String>[
                            'May',
                            'June',
                            'July'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                    fontSize: 20,
                                    letterSpacing: 0.9,
                                    fontWeight: FontWeight.w300),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Months',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Source Sans Pro',
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        child: DropdownButton<String>(
                          value: dropdownYear,
                          icon: const Icon(Icons.arrow_drop_down_outlined),
                          isExpanded: true,
                          iconSize: 30,
                          elevation: 16,
                          style: const TextStyle(color: Colors.blueGrey),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownYear = newValue!;
                            });
                          },
                          items: <String>[
                            '2021',
                            '2022',
                            '2023'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                    fontSize: 20,
                                    letterSpacing: 0.9,
                                    fontWeight: FontWeight.w300),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Container(
                  child: Container(
                    margin: EdgeInsets.all(30),
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xFF2B6EB1),
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Center(
                      child: Text(
                        "Almost Done",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}






