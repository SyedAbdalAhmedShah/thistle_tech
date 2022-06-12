import 'package:app/components/footer.dart';
import 'package:app/components/header.dart';
import 'package:app/components/verticalGap.dart';
import 'package:app/utils/config.dart';
import 'package:app/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Header(),
          const VerticalGap(
            customGap: 40,
          ),
          Align(
              alignment: Alignment.center,
              child: Text(
                Strings.whatWeDo,
                style: TextStyle(
                    fontSize: ResponsiveValue<double>(context,
                            valueWhen: const [
                              Condition.smallerThan(
                                  name: Strings.kLargeMobile, value: 32),
                              Condition.smallerThan(name: TABLET, value: 48),
                              Condition.smallerThan(name: DESKTOP, value: 60),
                            ],
                            defaultValue: 60)
                        .value!,
                    color: Config.lightGrey),
              )),
          VerticalGap(
            customGap: 20,
          ),
          Align(
              alignment: Alignment.center,
              child: Text(
                Strings.keyService,
                style: TextStyle(
                  fontSize: ResponsiveValue<double>(context,
                          valueWhen: const [
                            Condition.smallerThan(
                                name: Strings.kLargeMobile, value: 28),
                            Condition.smallerThan(name: TABLET, value: 28),
                            Condition.smallerThan(name: DESKTOP, value: 24),
                          ],
                          defaultValue: 25)
                      .value!,
                  color: Config.blackColor,
                ),
              )),
          Column(
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
              )
            ],
          ),
          Footer()
        ],
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  CustomText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        textWidthBasis: TextWidthBasis.parent,
        softWrap: true,
        textAlign: TextAlign.center,
        style: TextStyle(
            letterSpacing: 2,
            wordSpacing: 2,
            inherit: false,
            fontSize: 24,
            color: Config.unSelectedColor,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
