import 'package:app/components/header.dart';
import 'package:app/components/verticalGap.dart';
import 'package:app/home/tabBarView/MyHomePage.dart';
import 'package:app/utils/config.dart';
import 'package:app/utils/helper.dart';
import 'package:app/utils/responsive_handler.dart';
import 'package:app/utils/strings.dart';
import 'package:flutter/src/material/carousel.dart' as CS;
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../components/contactUs_section.dart';
import '../../components/footer.dart';
import '../../components/service_items.dart';

class AboutUs extends StatefulWidget {
  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  int carosalIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Header(
              isButtonActive: false,
              title: Strings.about,
              subtitle: Strings.aboutDesc),
          const WhatWeDoText(
            title: Strings.whoWeAre,
          ),
          Column(
            children: [
              ResponsiveRowColumn(
                layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                    ? ResponsiveRowColumnType.COLUMN
                    : ResponsiveRowColumnType.ROW,
                rowMainAxisAlignment: MainAxisAlignment.center,
                rowSpacing: 80,
                children: [
                  ResponsiveRowColumnItem(
                      child: ServiceItems(
                    customSize: RHandler.getResponsiveFontSize(context),
                    children: const [Strings.about1, Strings.about2],
                    title: '',
                  )),
                  ResponsiveRowColumnItem(
                      child: SizedBox(
                    height: 100,
                    width: RHandler.getResponsiveFontSize(context),
                    child: const Image(image: AssetImage(Config.logo)),
                  )),
                ],
              ),
              ResponsiveRowColumn(
                layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                    ? ResponsiveRowColumnType.COLUMN
                    : ResponsiveRowColumnType.ROW,
                rowMainAxisAlignment: MainAxisAlignment.center,
                rowSpacing: 80,
                children: [
                  ResponsiveRowColumnItem(
                      child: ServiceItems(
                    customSize: RHandler.getResponsiveFontSize(context),
                    children: const [
                      Strings.about3,
                      Strings.about4,
                      Strings.about5,
                      Strings.about6,
                      Strings.about7
                    ],
                    title: '',
                  )),
                  ResponsiveRowColumnItem(
                      child: ServiceItems(
                    customSize: RHandler.getResponsiveFontSize(context),
                    children: const [
                      Strings.about8,
                      Strings.about9,
                      Strings.about10,
                      Strings.about11,
                      Strings.about12,
                      Strings.about13
                    ],
                    title: '',
                  )),
                ],
              )
            ],
          ),
          const WhatWeDoText(
            title: Strings.testimonials,
            defaultValue: 45,
          ),
          const ContactUsSection(),
          const Footer()
        ],
      ),
    );
  }
}
