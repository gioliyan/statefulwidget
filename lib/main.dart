import 'package:flutter/material.dart';
import 'inputuser.dart';
import 'output.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

double convertKelvin(inputCelious) {
  return inputCelious + 273;
}

double convertReamur(inputCelious) {
  return inputCelious * 4 / 5;
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _inputuser = 0;
  double _kelvin = 0;
  double _reamur = 0;
  TextEditingController etinputuser = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              inputuser(etinputuser: etinputuser),
              output(kelvin: _kelvin, reamur: _reamur),
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      _inputuser = double.parse(etinputuser.text);
                      _kelvin = convertKelvin(_inputuser);
                      _reamur = convertReamur(_inputuser);
                    });
                  },
                  color: Colors.blue,
                  hoverColor: Colors.blue[900],
                  textColor: Colors.white,
                  child: Text("Konversi Suhu"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
