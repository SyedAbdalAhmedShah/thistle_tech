import 'package:app/utils/config.dart';
import 'package:app/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class WhereWeHaveDoneIt extends StatelessWidget {
  final double defaultValue;

  final double fValue;
  final double svalue;
  final String text;
  final Color? textColor;

  const WhereWeHaveDoneIt(
      {required this.defaultValue,
      required this.text,
      this.textColor,
      required this.fValue,
      required this.svalue});

  @override
  Widget build(BuildContext context) {
    return ResponsiveRowColumnItem(
        child: Text(
      text,
      style: TextStyle(
          fontSize: ResponsiveValue<double>(context,
                  valueWhen: [
                    Condition.smallerThan(
                        name: Strings.kLargeMobile, value: fValue),
                    Condition.smallerThan(name: TABLET, value: svalue)
                  ],
                  defaultValue: defaultValue)
              .value,
          color: textColor ?? Config.lightGrey),
    ));
  }
}
