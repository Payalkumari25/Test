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
  String dropdownValue = '2021';
  String dropDownMonth = 'May';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Text(
                'Customize',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'When are you Planning your GRE?',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0,
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
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '3 Months',
                      style: TextStyle(
                        color: Colors.teal.shade900,
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
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '6 Months',
                      style: TextStyle(
                        color: Colors.teal.shade900,
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
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '9 Months',
                      style: TextStyle(
                        color: Colors.teal.shade900,
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
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '12 Months',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0,
              ),
              Text('(OR)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Container(
                child: DropdownButton<String>(
                  value: dropDownMonth,
                  icon: const Icon(Icons.arrow_drop_down_outlined),
                  isExpanded: true,
                  iconSize: 30,
                  elevation: 20,
                  style: const TextStyle(color: Colors.black),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropDownMonth = newValue!;
                    });
                  },
                  items: <String>[
                    'May',
                    'June',
                    'July',
                    'August'
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

              Container(
                child: DropdownButton<String>(
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_drop_down_outlined),
                  isExpanded: true,
                  iconSize: 30,
                  elevation: 20,
                  style: const TextStyle(color: Colors.black),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>[
                    '2021',
                    '2022',
                    '2023',
                    '2024'
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
              RaisedButton(
                color: Colors.blue, // background
                textColor: Colors.white, // foreground
                onPressed: () { },
                child: Text('Almost Done'),
              )

            ],
          ),
        ),
      ),
    );
  }
}






