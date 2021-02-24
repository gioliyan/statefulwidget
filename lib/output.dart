import 'package:flutter/material.dart';

class output extends StatelessWidget {
  const output({
    Key key,
    @required double kelvin,
    @required double reamur,
  })  : _kelvin = kelvin,
        _reamur = reamur,
        super(key: key);

  final double _kelvin;
  final double _reamur;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(25),
                alignment: Alignment.center,
                child: Text('Suhu dalam Kelvin'),
              ),
              Container(
                alignment: Alignment.center,
                child: Text('$_kelvin',
                    style: TextStyle(
                      fontSize: 50,
                    )),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.all(25),
                  alignment: Alignment.center,
                  child: Text('Suhu dalam Reamor'),
                ),
              ),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    '$_reamur',
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
