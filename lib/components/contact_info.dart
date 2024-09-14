import 'package:app/components/verticalGap.dart';
import 'package:app/utils/config.dart';
import 'package:app/utils/strings.dart';
import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContactInfoTile(
              title: Strings.emailUs,
              subTitle: Strings.email,
              icon: Icons.email_outlined),
          VerticalGap(
            customGap: 20,
          ),
          ContactInfoTile(
              title: Strings.callUs,
              subTitle: Strings.callNumber,
              icon: Icons.call),
          VerticalGap(
            customGap: 20,
          ),
          ContactInfoTile(
              title: Strings.officeLocation,
              subTitle: Strings.location,
              icon: Icons.assistant_navigation),
          VerticalGap(
            customGap: 20,
          ),
          ContactInfoTile(
              title: Strings.hours,
              subTitle: Strings.hoursTime,
              icon: Icons.timer)
        ],
      ),
    );
  }
}

class ContactInfoTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  const ContactInfoTile(
      {required this.icon,
      required this.subTitle,
      required this.title,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: Config.whiteColor,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(color: Config.lightYellow, fontSize: 18),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              subTitle,
              style: TextStyle(
                  color: Config.whiteColor, fontSize: 12, letterSpacing: 1),
            ),
          ],
        )
      ],
    );
  }
}
