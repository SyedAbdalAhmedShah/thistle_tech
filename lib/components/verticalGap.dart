import 'package:flutter/cupertino.dart';

class VerticalGap extends StatelessWidget {
  final double? customGap;
  const VerticalGap({this.customGap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: customGap ?? 15,
    );
  }
}
