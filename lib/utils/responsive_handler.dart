import 'package:app/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_value.dart';

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
        Condition.smallerThan(name: Strings.kLargeMobile, value: fValue),
        Condition.largerThan(name: TABLET, value: sValue),
      ],
      defaultValue: defaultValue,
    ).value!;
  }

  static double getResponsiveFontSize(
    BuildContext context,
  ) {
    return ResponsiveValue<double>(
      context,
      valueWhen: [
        const Condition.largerThan(name: TABLET, value: 400),
      ],
      defaultValue: double.infinity,
    ).value!;
  }
}

class SizedBoxVisible extends StatelessWidget {
  final double space;
  const SizedBoxVisible(this.space, {super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: const [
        Condition.largerThan(name: Strings.kLargeMobile, value: true),
      ],
      hiddenWhen: const [
        Condition.smallerThan(name: MOBILE, value: false),
        Condition.smallerThan(name: Strings.kLargeMobile, value: false),
      ],
      child: SizedBox(
        height: ResponsiveWrapper.of(context).screenHeight * space,
      ),
    );
  }
}

class ResponsiveSpacer extends StatelessWidget {
  const ResponsiveSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveVisibility(
        visible: false,
        visibleWhen: [Condition.largerThan(name: Strings.kLargeMobile)],
        hiddenWhen: [Condition.smallerThan(name: Strings.kLargeMobile)],
        child: Spacer());
  }
}

class SizedBoxWhenSmalerThanTablet extends StatelessWidget {
  final double space;
  const SizedBoxWhenSmalerThanTablet(this.space, {super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: const [
        Condition.smallerThan(name: TABLET, value: true),
      ],
      child: SizedBox(
        height: ResponsiveWrapper.of(context).screenHeight * space,
      ),
    );
  }
}
