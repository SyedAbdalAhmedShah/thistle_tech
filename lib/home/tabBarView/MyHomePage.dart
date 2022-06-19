import 'package:app/components/contactUs_section.dart';
import 'package:app/components/footer.dart';
import 'package:app/components/header.dart';
import 'package:app/components/verticalGap.dart';
import 'package:app/components/where_we_have_done.dart';
import 'package:app/utils/config.dart';
import 'package:app/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../components/services_tile.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(
              isButtonActive: true,
              title: Strings.expertTech,
              subtitle: Strings.weMakeBusiness,
            ),
            const VerticalGap(
              customGap: 40,
            ),
            const WhatWeDoText(),
            const VerticalGap(
              customGap: 15,
            ),
            const KeyServicesText(),
            Container(
              margin: const EdgeInsets.only(top: 13),
              constraints: BoxConstraints(
                  maxWidth: ResponsiveValue<double>(context,
                          valueWhen: [
                            Condition.smallerThan(
                                name: TABLET,
                                value: MediaQuery.of(context).size.width)
                          ],
                          defaultValue: MediaQuery.of(context).size.width / 1.6)
                      .value!),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const VerticalGap(),
                  CustomText(
                    text: Strings.strategy,
                  ),
                  const VerticalGap(),
                  CustomText(
                    text: Strings.implementation,
                  ),
                  const VerticalGap(),
                  CustomText(
                    text: Strings.servicesManagement,
                  ),
                  const VerticalGap(),
                  CustomText(
                    text: Strings.security,
                  ),
                  const VerticalGap(
                    customGap: 25,
                  ),
                  ResponsiveRowColumnItem(
                    child: Text(
                      Strings.checkOutTheSummary,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 12, color: Config.unSelectedColor),
                    ),
                  ),
                ],
              ),
            ),
            const ServicesCardsItems(),
            const ServicesCardItems2(),
            const VerticalGap(
              customGap: 10,
            ),
            const WhereWeHaveDoneIt(
              text: Strings.whereWeHaveDoneIt,
              defaultValue: 60,
              fValue: 30,
              svalue: 45,
            ),
            const VerticalGap(),
            const WhereWeHaveDoneIt(
              text: Strings.boardRange,
              defaultValue: 25,
              textColor: Colors.black,
              fValue: 20,
              svalue: 25,
            ),
            whatWeHaveDoneDetails(context),
            const VerticalGap(),
            const WhereWeHaveDoneIt(
              text: Strings.hoeWeDoIt,
              defaultValue: 60,
              fValue: 30,
              svalue: 45,
            ),
            const VerticalGap(),
            const WhereWeHaveDoneIt(
              text: Strings.nonsenseApproach,
              defaultValue: 25,
              textColor: Colors.black,
              fValue: 20,
              svalue: 25,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 12,
              ),
              constraints: BoxConstraints(
                  maxWidth: ResponsiveValue<double>(context,
                          valueWhen: [
                            Condition.smallerThan(
                                name: TABLET,
                                value: MediaQuery.of(context).size.width)
                          ],
                          defaultValue: MediaQuery.of(context).size.width / 1.5)
                      .value!),
              child: ResponsiveRowColumn(
                layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                    ? ResponsiveRowColumnType.COLUMN
                    : ResponsiveRowColumnType.ROW,
                columnPadding: const EdgeInsets.symmetric(vertical: 10),
                columnSpacing: 10,
                // rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                rowCrossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ResponsiveRowColumnItem(
                      rowFlex: 4,
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        constraints: BoxConstraints(
                            maxWidth: ResponsiveValue<double>(context,
                                    valueWhen: [
                                      Condition.smallerThan(
                                          name: TABLET,
                                          value: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.9)
                                    ],
                                    defaultValue:
                                        MediaQuery.of(context).size.width * 1)
                                .value!),
                        child: Column(
                          children: [
                            Text(
                              Strings.toHelpOurClientGrow,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  height: 1.5,
                                  color: Config.unSelectedColor,
                                  fontSize: 12),
                            ),
                            const VerticalGap(),
                            Text(
                              Strings.inAllOfOurActivities,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  height: 1.5,
                                  color: Config.unSelectedColor,
                                  fontSize: 12),
                            ),
                            const VerticalGap(),
                            Text(
                              Strings.allDoneWithAbsolute,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  height: 1.5,
                                  color: Config.unSelectedColor,
                                  fontSize: 12),
                            ),
                            const VerticalGap(),
                            Text(
                              Strings.makeItSucceed,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  height: 1.5,
                                  color: Config.unSelectedColor,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      )),
                  ResponsiveRowColumnItem(
                      child: Container(
                    margin: EdgeInsets.only(left: 25, right: 30),
                    constraints: BoxConstraints(
                        minWidth: ResponsiveValue<double>(context,
                                valueWhen: [
                                  Condition.smallerThan(
                                      name: TABLET,
                                      value: MediaQuery.of(context).size.width *
                                          0.4)
                                ],
                                defaultValue: 280)
                            .value!),
                    width: 280,
                    height: 150,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(Config.flowerImage),
                            fit: BoxFit.fill)),
                  )),
                ],
              ),
            ),
            const ContactUsSection(),
            const Footer()
          ],
        ),
      ),
    );
  }

  Container whatWeHaveDoneDetails(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 12,
      ),
      constraints: BoxConstraints(
          maxWidth: ResponsiveValue<double>(context,
                  valueWhen: [
                    Condition.smallerThan(
                        name: TABLET, value: MediaQuery.of(context).size.width)
                  ],
                  defaultValue: MediaQuery.of(context).size.width / 1.5)
              .value!),
      child: ResponsiveRowColumn(
        layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        columnPadding: const EdgeInsets.symmetric(vertical: 10),
        columnSpacing: 10,
        // rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
        rowCrossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ResponsiveRowColumnItem(
              child: Container(
            margin: EdgeInsets.only(left: 25, right: 30),
            constraints: BoxConstraints(
                minWidth: ResponsiveValue<double>(context,
                        valueWhen: [
                          Condition.smallerThan(
                              name: TABLET,
                              value: MediaQuery.of(context).size.width * 0.4)
                        ],
                        defaultValue: 280)
                    .value!),
            width: 280,
            height: 150,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Config.flowerImage), fit: BoxFit.fill)),
          )),
          ResponsiveRowColumnItem(
              rowFlex: 4,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                constraints: BoxConstraints(
                    maxWidth: ResponsiveValue<double>(context,
                            valueWhen: [
                              Condition.smallerThan(
                                  name: TABLET,
                                  value:
                                      MediaQuery.of(context).size.width * 0.9)
                            ],
                            defaultValue: MediaQuery.of(context).size.width * 1)
                        .value!),
                child: Column(
                  children: [
                    Text(
                      Strings.weHaveExperienceIn,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Config.unSelectedColor, fontSize: 12),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        runSpacing: 20,
                        children: [
                          const CatagoriesText(
                            text: Strings.healtCare,
                          ),
                          slashText(),
                          const CatagoriesText(
                            text: Strings.financialServices,
                          ),
                          slashText(),
                          const CatagoriesText(
                            text: Strings.retail,
                          ),
                          slashText(),
                          const CatagoriesText(
                            text: Strings.utilities,
                          ),
                          slashText(),
                          const CatagoriesText(
                            text: Strings.fisheries,
                          ),
                          slashText(),
                          const CatagoriesText(
                            text: Strings.localGovernment,
                          ),
                          slashText(),
                          const CatagoriesText(
                            text: Strings.mediaRepresentation,
                          ),
                          slashText(),
                          const CatagoriesText(
                            text: Strings.newsMedia,
                          ),
                          slashText(),
                          const CatagoriesText(
                            text: Strings.facilitiesConstruction,
                          ),
                          slashText(),
                          const CatagoriesText(
                            text: Strings.commodities,
                          ),
                          const CatagoriesText(
                            text: Strings.oilfield,
                          ),
                          const CatagoriesText(
                            text: Strings.manufacturing,
                          ),
                          const CatagoriesText(
                            text: Strings.softwareDevelopment,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Text slashText() => Text(' | ');
}

class CatagoriesText extends StatelessWidget {
  final String text;
  const CatagoriesText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(letterSpacing: 1, fontWeight: FontWeight.bold),
    );
  }
}

class ServicesCardItems2 extends StatelessWidget {
  const ServicesCardItems2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      constraints: BoxConstraints(
          maxWidth: ResponsiveValue<double>(context,
                  valueWhen: [
                    Condition.smallerThan(
                        name: TABLET, value: MediaQuery.of(context).size.width)
                  ],
                  defaultValue: MediaQuery.of(context).size.width / 1.2)
              .value!),
      child: ResponsiveRowColumn(
        layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        rowMainAxisAlignment: MainAxisAlignment.center,
        children: [
          ResponsiveRowColumnItem(
            child: ServicesTile(
              color: Config.colorAfterScroll,
              icon: Icons.video_settings,
              title: Strings.serviceManagementText,
              description: Strings.serviceManagementDesc,
            ),
          ),
          ResponsiveRowColumnItem(
            child: ServicesTile(
              color: Config.lightPeach,
              icon: Icons.security,
              iconColor: Colors.grey,
              title: Strings.secuirtyText,
              titleTextColot: Colors.black,
              description: Strings.secuirtyDesc,
            ),
          ),
        ],
      ),
    );
  }
}

class ServicesCardsItems extends StatelessWidget {
  const ServicesCardsItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      constraints: BoxConstraints(
          maxWidth: ResponsiveValue<double>(context,
                  valueWhen: [
                    Condition.smallerThan(
                        name: TABLET, value: MediaQuery.of(context).size.width)
                  ],
                  defaultValue: MediaQuery.of(context).size.width / 1.2)
              .value!),
      child: ResponsiveRowColumn(
        layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        rowMainAxisAlignment: MainAxisAlignment.center,
        children: [
          ResponsiveRowColumnItem(
            child: ServicesTile(
              color: Config.logoColor,
              icon: Icons.lightbulb_outline,
              title: Strings.stratgyText,
              description: Strings.stratgyDesc,
            ),
          ),
          ResponsiveRowColumnItem(
            child: ServicesTile(
              color: Config.lightPink,
              icon: Icons.calendar_today,
              iconColor: Colors.grey,
              title: Strings.implementationText,
              titleTextColot: Colors.black,
              description: Strings.implementationDesc,
            ),
          ),
        ],
      ),
    );
  }
}

class KeyServicesText extends StatelessWidget {
  final String? title;
  final double? defaultValue;
  const KeyServicesText({this.title, this.defaultValue});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Text(
          title ?? Strings.keyService,
          style: TextStyle(
            fontSize: ResponsiveValue<double>(context,
                    valueWhen: const [
                      Condition.smallerThan(
                          name: Strings.kLargeMobile, value: 28),
                      Condition.smallerThan(name: TABLET, value: 28),
                      Condition.smallerThan(name: DESKTOP, value: 24),
                    ],
                    defaultValue: defaultValue ?? 25)
                .value!,
            color: Config.blackColor,
          ),
        ));
  }
}

class WhatWeDoText extends StatelessWidget {
  final String? title;
  final double? defaultValue;

  const WhatWeDoText({this.title, this.defaultValue});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Text(
          title ?? Strings.whatWeDo,
          style: TextStyle(
              fontSize: ResponsiveValue<double>(context,
                      valueWhen: const [
                        Condition.smallerThan(
                            name: Strings.kLargeMobile, value: 32),
                        Condition.smallerThan(name: TABLET, value: 48),
                        Condition.smallerThan(name: DESKTOP, value: 60),
                      ],
                      defaultValue: defaultValue ?? 60)
                  .value!,
              color: Config.lightGrey),
        ));
  }
}

class CustomText extends StatelessWidget {
  final String text;
  CustomText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ResponsiveRowColumnItem(
        child: Text(
          text,
          textWidthBasis: TextWidthBasis.parent,
          softWrap: true,
          textAlign: TextAlign.center,
          style: TextStyle(
              letterSpacing: 2,
              wordSpacing: 1,
              height: 1.5,
              fontSize: 18,
              color: Config.unSelectedColor,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
