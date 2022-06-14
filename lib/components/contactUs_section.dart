import 'package:app/components/contact_info.dart';
import 'package:app/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../utils/config.dart';

class ContactUsSection extends StatelessWidget {
  const ContactUsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: buildBackgroundimage(),
      child: Container(
        decoration: buildGradieintBackground(),
        child: ResponsiveRowColumn(
          columnCrossAxisAlignment: CrossAxisAlignment.center,
          rowMainAxisAlignment: MainAxisAlignment.center,
          rowPadding: EdgeInsets.symmetric(vertical: 20),
          layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          children: const [ResponsiveRowColumnItem(child: ContactInfo())],
        ),
      ),
    );
  }

  BoxDecoration buildGradieintBackground() {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Config.color1.withOpacity(.9),
          Config.color2.withOpacity(.9),
          Config.color3.withOpacity(.9),
          Config.color4.withOpacity(.9),
          Config.color5.withOpacity(.9),
          Config.color6.withOpacity(.9),
          Config.color7.withOpacity(.9),
          Config.color8.withOpacity(.9),
        ],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        stops: const [0, 0.2, 0.4, 0.6, 0.7, 0.8, 0.9, 1],
      ),
    );
  }

  BoxDecoration buildBackgroundimage() {
    return const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(Strings.headerBackgroundImg), fit: BoxFit.fill));
  }
}
