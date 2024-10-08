import 'dart:math';

import 'package:app/components/verticalGap.dart';
import 'package:app/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_value.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class ServicesTile extends StatefulWidget {
  final Color color;
  final IconData icon;
  final Color? iconColor;
  final String title;
  final String description;
  final Color? titleTextColot;
  const ServicesTile(
      {super.key,
      required this.color,
      required this.icon,
      this.iconColor,
      this.titleTextColot,
      required this.description,
      required this.title});

  @override
  State<ServicesTile> createState() => _ServicesTileState();
}

class _ServicesTileState extends State<ServicesTile> {
  bool isLoading = true;
  double angle = 0;

  _flip() {
    setState(() {
      angle = pi;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(const Duration(milliseconds: 100))
            .then((value) => setState(() {
                  isLoading = false;
                }))
            .then((value) => _flip()),
        builder: (context, async) {
          return AnimatedOpacity(
            duration: const Duration(seconds: 2),
            opacity: isLoading ? 0 : 1,
            child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: angle),
              builder: (context, double val, __) {
                return Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.0001)
                    ..rotateY(val),
                  child: Container(
                    // constraints: const BoxConstraints(minWidth: 380, minHeight: 270),
                    margin: EdgeInsets.symmetric(
                        horizontal: ResponsiveValue<double>(context,
                                valueWhen: const [
                                  Condition.smallerThan(name: TABLET, value: 0)
                                ],
                                defaultValue: 15)
                            .value!,
                        vertical: 8),
                    height: 300,
                    width: ResponsiveValue<double>(context,
                            valueWhen: [
                              Condition.smallerThan(
                                  name: TABLET,
                                  value: MediaQuery.of(context).size.width)
                            ],
                            defaultValue:
                                MediaQuery.of(context).size.width * 0.3)
                        .value!,
                    color: widget.color,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.identity()..rotateY(val),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const VerticalGap(
                              customGap: 25,
                            ),
                            Icon(
                              widget.icon,
                              size: 80,
                              color: widget.iconColor ?? Config.whiteColor,
                            ),
                            VerticalGap(
                              customGap: ResponsiveValue<double>(context,
                                      valueWhen: [
                                        const Condition.smallerThan(
                                            name: DESKTOP, value: 35)
                                      ],
                                      defaultValue: 25)
                                  .value,
                            ),
                            Text(
                              widget.title,
                              style: TextStyle(
                                  letterSpacing: 2,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: widget.titleTextColot ??
                                      Config.whiteColor),
                            ),
                            const VerticalGap(
                              customGap: 10,
                            ),
                            Text(widget.description,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12,
                                    color: widget.titleTextColot ??
                                        Config.whiteColor))
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              duration: const Duration(seconds: 1),
            ),
          );
        });
  }
}
