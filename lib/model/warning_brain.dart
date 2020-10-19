import 'package:flutter/material.dart';

class WarningBrain {
  WarningBrain({@required this.positive, @required this.death});

  final int positive;
  final int death;

  Text getWarningText() {
    double cfrRate = (death / positive) * 100;
    String message;

    if (cfrRate < 2.5) {
      message =
          'CFR rate reached ${cfrRate.toStringAsFixed(2)}%, put your mask on while doing activities outside';
    } else if (cfrRate < 5.0) {
      message =
          'CFR rate reached ${cfrRate.toStringAsFixed(2)}%, don\'t forget to wash your hands while doing activities outside';
    } else {
      message =
          'CFR rate reached ${cfrRate.toStringAsFixed(2)}%, don\'t go outside your house!';
    }

    return Text(
      message,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 20,
        fontFamily: 'OpenSans',
        fontStyle: FontStyle.italic,
      ),
    );
  }
}
