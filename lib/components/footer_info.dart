import 'package:app/utils/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterInfo extends StatelessWidget {
  const FooterInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      alignment: WrapAlignment.center,
      children: [
        FooterInfoText("© 2022 Thistle Tech Limited"),
        FooterInfoText(" | "),
        FooterInfoText("Tauranga, BoP, New Zealand"),
        FooterInfoText(" | "),
        FooterInfoText("enquiries@thistletech.co.nz "),
        FooterInfoText(" | "),
        FooterInfoText("+64 (22) 151 7616"),
      ],
    );
  }
}

class FooterInfoText extends StatelessWidget {
  final String text;
  const FooterInfoText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        fontWeight: FontWeight.w300,
        color: Config.whiteColor,
        fontSize: 12,
      ),
    );
  }
}
