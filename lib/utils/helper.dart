import 'package:app/utils/config.dart';
import 'package:app/utils/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:show_up_animation/show_up_animation.dart';

class Helper {
  static List<Widget> sliderItems = [
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        craousalImage(),
        SizedBox(
          width: 20,
        ),
        const SizedBox(
          width: 400,
          child: CarousalResuableItem(
            allStrings: [
              Strings.digitalTransformation1,
              Strings.digitalTransformation2,
              Strings.digitalTransformation3
            ],
            title: Strings.digitalTransformation,
          ),
        ),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        craousalImage(),
        const SizedBox(
          width: 20,
        ),
        const SizedBox(
          width: 400,
          child: CarousalResuableItem(
            allStrings: [
              Strings.majorSystem1,
              Strings.majorSystem2,
              Strings.majorSystem3,
            ],
            title: Strings.majorSystem,
          ),
        ),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        craousalImage(),
        const SizedBox(
          width: 20,
        ),
        const SizedBox(
          width: 400,
          child: CarousalResuableItem(
            allStrings: [
              Strings.solutions1,
              Strings.solutions2,
              Strings.solutions3
            ],
            title: Strings.solutions,
          ),
        ),
      ],
    )
  ];

  static ResponsiveVisibility craousalImage() {
    return ResponsiveVisibility(
      visible: true,
      hiddenWhen: [Condition.smallerThan(name: DESKTOP, value: false)],
      child: ShowUpAnimation(
        direction: Direction.horizontal,
        offset: -0.1,
        animationDuration: const Duration(seconds: 1),
        child: const SizedBox(
          width: 300,
          height: 200,
          child: Image(
            image: AssetImage(Strings.headerBackgroundImg),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

class CarousalResuableItem extends StatelessWidget {
  final String title;
  final List<String> allStrings;
  const CarousalResuableItem({
    required this.title,
    required this.allStrings,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShowUpAnimation(
      animationDuration: const Duration(seconds: 1),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Config.unSelectedColor),
            ),
            ...allStrings
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      e,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Config.unSelectedColor, fontSize: 12),
                    ),
                  ),
                )
                .toList()
          ],
        ),
      ),
    );
  }
}
