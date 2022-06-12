import 'package:app/home/tabBarView/AboutUs.dart';
import 'package:app/home/tabBarView/MyHomePage.dart';
import 'package:app/home/tabBarView/services.dart';
import 'package:app/utils/config.dart';
import 'package:app/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  SliverAppBar(
                    backgroundColor: Colors.white,
                    pinned: true,
                    // snap: true,

                    expandedHeight: 60,

                    flexibleSpace: FlexibleSpaceBar(
                      expandedTitleScale: 1.1,
                      collapseMode: CollapseMode.none,
                      title: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 100),
                            child: Text(
                              Strings.logoName,
                              style: TextStyle(
                                  color: Config.logoColor,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                  fontSize: 24),
                            ),
                          ),
                          Expanded(
                            child: TabBar(
                                physics: const NeverScrollableScrollPhysics(),
                                indicatorColor: Colors.white,
                                overlayColor: Config.materialTransparentColor,
                                labelColor: innerBoxIsScrolled
                                    ? Config.colorAfterScroll
                                    : Config.tabBarActiveColor,
                                unselectedLabelColor: innerBoxIsScrolled
                                    ? Config.tabBarActiveColor
                                    : Config.unSelectedColor,
                                tabs: [
                                  Text(
                                    Strings.home,
                                    style: Config.robotoTextStyle,
                                  ),
                                  Text(
                                    Strings.about,
                                    style: Config.robotoTextStyle,
                                  ),
                                  Text(Strings.ourServices,
                                      style: Config.robotoTextStyle)
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
            body: const TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [MyHomePage(), AboutUs(), Services()],
            )),
      ),
    );
  }
}
