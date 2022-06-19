import 'package:app/utils/config.dart';
import 'package:app/utils/responsive_handler.dart';
import 'package:app/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Header extends StatelessWidget {
  final bool isButtonActive;
  final double? customHeight;
  final String title;
  final String subtitle;
  final double? padding;
  final double? sizedBoxWidth;
  final AlignmentGeometry? alignment;
  const Header(
      {required this.isButtonActive,
      this.customHeight,
      this.alignment,
      this.sizedBoxWidth,
      this.padding,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(RHandler.getBorderRadiusValue(context)),
              bottomRight:
                  Radius.circular(RHandler.getBorderRadiusValue(context))),
          image: const DecorationImage(
              image: AssetImage(Strings.headerBackgroundImg),
              fit: BoxFit.fill)),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        height:
            customHeight ?? ResponsiveWrapper.of(context).screenHeight * 0.45,
        constraints: BoxConstraints(
          minHeight: customHeight ?? 400,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
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
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(RHandler.getBorderRadiusValue(context)),
              bottomRight:
                  Radius.circular(RHandler.getBorderRadiusValue(context))),
        ),
        child: Column(
          mainAxisAlignment: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
              ? MainAxisAlignment.center
              : MainAxisAlignment.end,
          children: [
            RHandler.getSpacer(),
            RHandler.sizedBoxWhenSmalerThanTablet(context, 0.1),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: RHandler.headingFontValue(context, 30, 55, 45),
                  color: Config.whiteColor),
            ),
            RHandler.sizedBoxVisible(context, 0.02),
            RHandler.sizedBoxWhenSmalerThanTablet(context, 0.015),
            SizedBox(
              width: ResponsiveValue<double>(context,
                      valueWhen: [
                        const Condition.largerThan(
                            name: Strings.kLargeMobile, value: double.infinity)
                      ],
                      defaultValue: sizedBoxWidth ?? 500)
                  .value,
              child: Text(subtitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      wordSpacing: 2,
                      fontSize: RHandler.headingFontValue(context, 18, 20, 20),
                      color: Config.whiteColor,
                      letterSpacing: 1)),
            ),
            RHandler.sizedBoxVisible(context, 0.08),
            RHandler.sizedBoxWhenSmalerThanTablet(context, 0.04),
            Visibility(
              visible: isButtonActive,
              child: MaterialButton(
                height: ResponsiveWrapper.of(context).screenHeight * 0.03,
                onPressed: () {},
                color: Colors.white.withOpacity(0.7),
                shape: const CircleBorder(),
                child: const Icon(
                  Icons.keyboard_arrow_down_sharp,
                  size: 30,
                ),
              ),
            ),
            RHandler.sizedBoxVisible(context, 0.06),
          ],
        ),
      ),
    );
  }
}
