import 'package:app/components/verticalGap.dart';
import 'package:app/utils/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ServiceItems extends StatelessWidget {
  final List<String> children;
  final bool? isTitleEnable;
  final double? customSize;
  final String title;
  const ServiceItems(
      {super.key, required this.children,
      required this.title,
      this.isTitleEnable,
      this.customSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: customSize ?? 700,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Visibility(
            visible: isTitleEnable ?? true,
            child: Text(
              title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, letterSpacing: 1, fontSize: 16),
            ),
          ),
          const VerticalGap(),
          ...children
              .map((e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      e,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          height: 1.6,
                          letterSpacing: 1,
                          fontSize: ResponsiveValue<double>(context,
                                  valueWhen: const [
                                    Condition.smallerThan(
                                        name: DESKTOP, value: 16)
                                  ],
                                  defaultValue: 12)
                              .value,
                          color: Config.unSelectedColor),
                    ),
                  ))
              .toList()
        ],
      ),
    );
  }
}
