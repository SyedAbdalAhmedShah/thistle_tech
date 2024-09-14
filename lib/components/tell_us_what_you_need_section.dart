import 'package:app/utils/config.dart';
import 'package:app/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class TellUsWhatYouNeedSection extends StatefulWidget {
  const TellUsWhatYouNeedSection({Key? key}) : super(key: key);

  @override
  State<TellUsWhatYouNeedSection> createState() =>
      _TellUsWhatYouNeedSectionState();
}

class _TellUsWhatYouNeedSectionState extends State<TellUsWhatYouNeedSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Strings.tellUsWhat,
              style: TextStyle(color: Config.lightYellow, fontSize: 18),
            ),
            const BuildTextFieldsBox(Strings.yourName, Strings.yourEmail),
            const BuildTextFieldsBox(Strings.roleAndTitle, Strings.company),
            const BuildTextField(
              label: 'Message',
              maxLine: 5,
              width: 100,
              height: 623,
            ),
            Container(
              width: 620,
              margin: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 20),
                    decoration: BoxDecoration(
                        color: Config.lightYellow,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Text(
                      'SUBMIT',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, letterSpacing: 3),
                    ),
                  ),
                ],
              ),
            )
          ]),
    );
  }
}

class BuildTextFieldsBox extends StatelessWidget {
  final String firstField;
  final String secondField;
  const BuildTextFieldsBox(this.firstField, this.secondField, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ResponsiveRowColumn(
        layout:
            ResponsiveWrapper.of(context).isSmallerThan(Strings.kLargeMobile)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
        children: [
          ResponsiveRowColumnItem(
            child: BuildTextField(label: firstField),
          ),
          ResponsiveRowColumnItem(
            child: BuildTextField(label: secondField),
          )
        ],
      ),
    );
  }
}

class BuildTextField extends StatelessWidget {
  final String label;
  final int? maxLine;
  final double? height;
  final double? width;
  const BuildTextField(
      {this.height, required this.label, this.maxLine, this.width, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
      child: Container(
        constraints: const BoxConstraints(minWidth: 150),
        // width: width ?? 300,
        width: ResponsiveValue<double>(
          context,
          valueWhen: [
            Condition.smallerThan(
                name: Strings.kLargeMobile,
                value: ResponsiveWrapper.of(context).screenWidth),
            const Condition.smallerThan(name: TABLET, value: 250)
          ],
          defaultValue: width ?? 300,
        ).value,
        height: height,
        child: TextField(
          onTap: () {},
          maxLines: maxLine ?? 1,
          style: TextStyle(color: Config.whiteColor),
          decoration: InputDecoration(
              hintText: label,
              hintStyle: TextStyle(
                  fontSize: 12,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                  color: Config.whiteColor),
              fillColor: Colors.white,
              enabledBorder: border(),
              focusedBorder: border(),
              focusColor: Colors.white),
        ),
      ),
    );
  }

  UnderlineInputBorder border() {
    return const UnderlineInputBorder(
        borderRadius: BorderRadius.all(Radius.zero),
        borderSide: BorderSide(
            color: Colors.white, style: BorderStyle.solid, width: 2));
  }
}
