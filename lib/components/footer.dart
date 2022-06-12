import 'package:app/utils/config.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 45,
            color: Config.logoColor,
          )
        ],
      ),
    );
  }
}
