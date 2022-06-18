import 'package:app/utils/config.dart';
import 'package:flutter/material.dart';

class CustomAnimatedContainer extends StatelessWidget {
  const CustomAnimatedContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 150,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Config.flowerImage), fit: BoxFit.fill)),
    );
  }
}
