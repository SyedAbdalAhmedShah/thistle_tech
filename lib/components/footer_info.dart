import 'package:app/utils/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterInfo extends StatelessWidget {
  const FooterInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        footerInfoText("© 2022 Thistle Tech Limited"),
        footerInfoText(" | "),
        footerInfoText("Tauranga, BoP, New Zealand"),
        footerInfoText(" | "),
        footerInfoText("enquiries@thistletech.co.nz "),
        footerInfoText(" | "),
        footerInfoText("+64 (22) 151 7616"),
      ],
    );
  }

  Text footerInfoText(String text) {
    return Text(text,
        style: GoogleFonts.roboto(
            fontWeight: FontWeight.w300,
            color: Config.whiteColor,
            fontSize: 12));
  }
}
