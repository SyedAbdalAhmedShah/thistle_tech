import 'package:app/components/custom_animated_container.dart';
import 'package:app/components/header.dart';
import 'package:app/components/verticalGap.dart';
import 'package:app/home/tabBarView/MyHomePage.dart';
import 'package:app/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../../components/contactUs_section.dart';
import '../../components/footer.dart';
import '../../components/service_items.dart';
import '../../utils/config.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Header(
            isButtonActive: false,
            customHeight: ResponsiveWrapper.of(context).screenHeight * 0.35,
            title: Strings.ourServices,
            subtitle: Strings.ourServicesDesc,
            alignment: Alignment.centerLeft,
            padding: 120,
            sizedBoxWidth: 500,
          ),
          const VerticalGap(),
          const WhatWeDoText(),
          const VerticalGap(
            customGap: 15,
          ),
          ResponsiveRowColumn(
            layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            rowMainAxisAlignment: MainAxisAlignment.center,
            columnMainAxisAlignment: MainAxisAlignment.start,
            rowCrossAxisAlignment: CrossAxisAlignment.start,
            rowSpacing: 30,
            rowPadding: EdgeInsets.symmetric(horizontal: 30),
            columnPadding: EdgeInsets.symmetric(vertical: 30),
            columnSpacing: 30,
            children: [
              ResponsiveRowColumnItem(
                  child: CustomAnimatedContainer(
                boxColor: Config.logoColor,
                icon: Icons.lightbulb_outline,
              )),
              const ResponsiveRowColumnItem(
                  child: ServiceItems(
                title: Strings.stratgyText,
                children: [
                  Strings.strategyText1,
                  Strings.strategyText2,
                  Strings.strategyText3,
                ],
              ))
            ],
          ),
          const VerticalGap(
            customGap: 25,
          ),
          ResponsiveRowColumn(
            layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            rowMainAxisAlignment: MainAxisAlignment.center,
            columnMainAxisAlignment: MainAxisAlignment.start,
            rowCrossAxisAlignment: CrossAxisAlignment.start,
            rowSpacing: 30,
            columnPadding: EdgeInsets.symmetric(vertical: 30),
            columnSpacing: 30,
            rowPadding: EdgeInsets.symmetric(horizontal: 30),
            children: [
              const ResponsiveRowColumnItem(
                  child: ServiceItems(
                title: Strings.implementationText,
                children: [
                  Strings.implementation1,
                  Strings.implementatio2,
                  Strings.implementation3,
                ],
              )),
              ResponsiveRowColumnItem(
                  child: CustomAnimatedContainer(
                boxColor: Config.lightPink,
                icon: Icons.calendar_today,
                iconColor: Config.unSelectedColor,
              )),
            ],
          ),
          const VerticalGap(
            customGap: 25,
          ),
          ResponsiveRowColumn(
            layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            rowMainAxisAlignment: MainAxisAlignment.center,
            columnMainAxisAlignment: MainAxisAlignment.start,
            rowCrossAxisAlignment: CrossAxisAlignment.start,
            rowSpacing: 30,
            rowPadding: EdgeInsets.symmetric(horizontal: 30),
            columnPadding: EdgeInsets.symmetric(vertical: 30),
            columnSpacing: 30,
            children: [
              ResponsiveRowColumnItem(
                  child: CustomAnimatedContainer(
                boxColor: Config.colorAfterScroll,
                icon: Icons.settings_applications_outlined,
              )),
              const ResponsiveRowColumnItem(
                  child: ServiceItems(
                title: Strings.serviceManagementText,
                children: [
                  Strings.servicesManagement1,
                  Strings.servicesManagement2,
                  Strings.servicesManagement3,
                  Strings.servicesManagement4,
                ],
              )),
            ],
          ),
          const VerticalGap(
            customGap: 25,
          ),
          ResponsiveRowColumn(
            layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            rowMainAxisAlignment: MainAxisAlignment.center,
            columnMainAxisAlignment: MainAxisAlignment.start,
            rowCrossAxisAlignment: CrossAxisAlignment.start,
            rowSpacing: 30,
            rowPadding: EdgeInsets.symmetric(horizontal: 30),
            children: [
              const ResponsiveRowColumnItem(
                  child: ServiceItems(
                title: Strings.secuirtyText,
                children: [
                  Strings.secuirty1,
                  Strings.security2,
                  Strings.security3,
                ],
              )),
              ResponsiveRowColumnItem(
                  child: CustomAnimatedContainer(
                boxColor: Config.lightYellow,
                iconColor: Colors.grey,
                icon: Icons.security,
              )),
            ],
          ),
          const VerticalGap(
            customGap: 25,
          ),
          ResponsiveRowColumn(
            layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            rowMainAxisAlignment: MainAxisAlignment.center,
            columnMainAxisAlignment: MainAxisAlignment.start,
            rowCrossAxisAlignment: CrossAxisAlignment.start,
            rowSpacing: 30,
            rowPadding: EdgeInsets.symmetric(horizontal: 30),
            columnPadding: EdgeInsets.symmetric(vertical: 30),
            columnSpacing: 30,
            children: const [
              ResponsiveRowColumnItem(
                child: CustomAnimatedContainer(
                  image: Image(
                    image: AssetImage(Config.logo),
                  ),
                  boxColor: Colors.transparent,
                ),
              ),
              ResponsiveRowColumnItem(
                  child: ServiceItems(
                title: Strings.secuirtyText,
                children: [
                  Strings.logo1,
                  Strings.logo2,
                ],
              )),
            ],
          ),
          const ContactUsSection(),
          const Footer()
        ],
      ),
    );
  }
}
