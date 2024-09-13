import 'dart:math';

import 'package:app/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CustomAnimatedContainer extends StatefulWidget {
  final IconData? icon;
  final Color? iconColor;
  final Color boxColor;
  final Image? image;

  const CustomAnimatedContainer(
      {super.key,
      this.icon,
      this.iconColor,
      required this.boxColor,
      this.image});

  @override
  State<CustomAnimatedContainer> createState() =>
      _CustomAnimatedContainerState();
}

class _CustomAnimatedContainerState extends State<CustomAnimatedContainer> {
  double angle = 0;
  bool isLoading = true;
  @override
  _flip() {
    setState(() {
      angle = pi;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(milliseconds: 100))
            .then((value) => setState(() {
                  isLoading = false;
                }))
            .then((value) => _flip()),
        builder: (context, async) {
          return AnimatedOpacity(
            duration: Duration(seconds: 2),
            opacity: isLoading ? 0 : 1,
            child: TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: angle),
                duration: const Duration(seconds: 1),
                builder: (context, double val, __) {
                  return Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.0001)
                      ..rotateY(val),
                    child: Container(
                      width: ResponsiveValue<double>(context,
                              valueWhen: [
                                Condition.smallerThan(name: DESKTOP, value: 650)
                              ],
                              defaultValue: 150)
                          .value,
                      height: ResponsiveValue<double>(context,
                              valueWhen: [
                                Condition.smallerThan(name: DESKTOP, value: 250)
                              ],
                              defaultValue: 180)
                          .value,
                      color: widget.boxColor,
                      child: widget.image ??
                          Icon(widget.icon,
                              size: 100,
                              color: widget.iconColor ?? Config.whiteColor),
                    ),
                  );
                }),
          );
        });
  }
}
