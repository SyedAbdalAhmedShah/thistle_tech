import 'package:app/components/footer_info.dart';
import 'package:app/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: ResponsiveWrapper.of(context).screenHeight * 0.08,
      width: double.infinity,
      color: Config.logoColor,
      child: ResponsiveRowColumn(
        columnPadding: const EdgeInsets.all(10),
        rowPadding: const EdgeInsets.all(10),
        rowMainAxisAlignment: MainAxisAlignment.center,
        columnCrossAxisAlignment: CrossAxisAlignment.center,
        layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        children: [
          const ResponsiveRowColumnItem(
              rowOrder: 1, columnOrder: 2, child: FooterInfo()),
          ResponsiveRowColumnItem(
              rowOrder: 2,
              columnOrder: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.facebook),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.facebook)
                ],
              ))
        ],
      ),
    );
  }
}
