import 'package:app/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_value.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class RHandler {
  static double getBorderRadiusValue(BuildContext context) {
    return ResponsiveValue<double>(context,
            valueWhen: [const Condition.smallerThan(name: TABLET, value: 0)],
            defaultValue: 300)
        .value!;
  }

  static double headingFontValue(
      BuildContext context, double fValue, double sValue, double defaultValue) {
    return ResponsiveValue<double>(
      context,
      valueWhen: [
        Condition.largerThan(name: Strings.kLargeMobile, value: fValue),
        Condition.largerThan(name: TABLET, value: sValue),
      ],
      defaultValue: defaultValue,
    ).value!;
  }
}
