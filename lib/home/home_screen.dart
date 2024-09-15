import 'package:app/components/verticalGap.dart';
import 'package:app/home/tabBarView/AboutUs.dart';
import 'package:app/home/tabBarView/MyHomePage.dart';
import 'package:app/home/tabBarView/services.dart';
import 'package:app/utils/config.dart';
import 'package:app/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    controller = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
            floatHeaderSlivers: ResponsiveValue(context,
                    valueWhen: [
                      const Condition.smallerThan(name: DESKTOP, value: false)
                    ],
                    defaultValue: true)
                .value!,
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  SliverAppBar(
                    primary: false,
                    toolbarHeight: kToolbarHeight + 70,
                    backgroundColor: ResponsiveValue(context,
                            valueWhen: [
                              Condition.smallerThan(
                                  name: DESKTOP, value: Config.lightPeach)
                            ],
                            defaultValue: Config.whiteColor)
                        .value!,

                    title: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: ResponsiveVisibility(
                          visible: false,
                          visibleWhen: const [
                            Condition.smallerThan(name: DESKTOP, value: true),
                          ],
                          child: Row(
                            children: [
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: Image(
                                  image: const AssetImage(Config.logo),
                                  color: Config.logoColor,
                                ),
                              ),
                              Text(
                                Strings.logoName,
                                style: TextStyle(
                                    color: Config.logoColor,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: GoogleFonts.roboto().fontFamily,
                                    fontSize: 24),
                              )
                            ],
                          )),
                    ),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 38.0),
                        child: ResponsiveVisibility(
                          visible: false,
                          visibleWhen: const [
                            Condition.smallerThan(name: DESKTOP, value: true),
                          ],
                          child: Center(
                            child: PopupMenuButton<int>(
                              constraints: BoxConstraints(
                                  maxWidth:
                                      MediaQuery.of(context).size.width / 1.8),

                              icon: Icon(
                                Icons.menu,
                                size: 30,
                                color: Config.logoColor,
                              ),

                              itemBuilder: (context) => [
                                const PopupMenuItem(
                                    enabled: false,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 30),
                                    child: VerticalGap(
                                      customGap: 25,
                                    )),
                                // PopupMenuItem 1
                                const PopupMenuItem(
                                  value: 1,
                                  // row with 2 children
                                  child: SizedBox(
                                      width: 500,
                                      height: 40,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            Strings.home,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Divider(
                                            height: 0,
                                          )
                                        ],
                                      )),
                                ),
                                const PopupMenuItem(
                                  value: 2,
                                  // row with 2 children
                                  child: SizedBox(
                                      width: 500,
                                      height: 40,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            Strings.ourServices,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Divider(
                                            height: 0,
                                          )
                                        ],
                                      )),
                                ),
                                const PopupMenuItem(
                                  value: 3,
                                  // row with 2 children
                                  child: SizedBox(
                                      width: 500,
                                      height: 40,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            Strings.about,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Divider(
                                            height: 0,
                                          )
                                        ],
                                      )),
                                ),

                                // PopupMenuItem 2
                              ],
                              offset: Offset(
                                  ResponsiveValue<double>(context,
                                          valueWhen: [
                                            Condition.smallerThan(
                                              name: Strings.kLargeMobile,
                                              value: -50 -
                                                  (MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      2),
                                            ),
                                            const Condition.largerThan(
                                                name: Strings.kLargeMobile,
                                                value: -180)
                                          ],
                                          defaultValue: -160)
                                      .value!,
                                  55),
                              color: Config.lightYellow,
                              elevation: 2,
                              // on selected we show the dialog box
                              onSelected: (value) {
                                if (value == 1) {
                                  controller.animateTo(0,
                                      duration:
                                          const Duration(milliseconds: 100));
                                } else if (value == 2) {
                                  controller.animateTo(1,
                                      duration:
                                          const Duration(milliseconds: 100));
                                } else {
                                  controller.animateTo(2,
                                      duration:
                                          const Duration(milliseconds: 100));
                                }
                              },
                            ),
                          ),
                        ),
                      )
                    ],
                    pinned: ResponsiveValue(context,
                            valueWhen: [
                              const Condition.smallerThan(
                                  name: DESKTOP, value: false)
                            ],
                            defaultValue: true)
                        .value!,
                    // snap: true,s

                    expandedHeight: 60,

                    flexibleSpace: ResponsiveVisibility(
                      visibleWhen: const [
                        Condition.largerThan(name: DESKTOP, value: true),
                      ],
                      hiddenWhen: const [
                        Condition.smallerThan(name: DESKTOP, value: true),
                      ],
                      child: FlexibleSpaceBar(
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
                                  controller: controller,
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
                                    Text(Strings.ourServices,
                                        style: Config.robotoTextStyle),
                                    Text(
                                      Strings.about,
                                      style: Config.robotoTextStyle,
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
            body: TabBarView(
              controller: controller,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                const MyHomePage(),
                const Services(),
                AboutUs(),
              ],
            )),
      ),
    );
  }
}
