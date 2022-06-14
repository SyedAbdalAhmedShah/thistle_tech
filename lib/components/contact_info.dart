import 'package:app/components/verticalGap.dart';
import 'package:app/utils/config.dart';
import 'package:app/utils/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        contactInfoTile(Strings.emailUs, Strings.email, Icons.email_outlined),
        const VerticalGap(
          customGap: 20,
        ),
        contactInfoTile(Strings.callUs, Strings.callNumber, Icons.call),
        const VerticalGap(
          customGap: 20,
        ),
        contactInfoTile(Strings.officeLocation, Strings.location,
            Icons.assistant_navigation),
        const VerticalGap(
          customGap: 20,
        ),
        contactInfoTile(Strings.hours, Strings.hoursTime, Icons.timer)
      ],
    );
  }

  Row contactInfoTile(String title, String subTitle, IconData icon) {
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
              style: TextStyle(color: Config.lightYellow),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              subTitle,
              style: TextStyle(
                  color: Config.whiteColor, fontSize: 10, letterSpacing: 1),
            ),
          ],
        )
      ],
    );
  }
}
