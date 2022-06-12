import 'package:app/utils/config.dart';
import 'package:app/utils/strings.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      alignment: Alignment.center,
      foregroundDecoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Config.color1,
              Config.color2,
              Config.color3,
              Config.color4,
              Config.color5,
              Config.color6,
              Config.color7,
              Config.color8,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0, 0.2, 0.4, 0.6, 0.7, 0.8, 0.9, 1],
          ),
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(300),
              bottomRight: Radius.circular(300))),
      decoration: BoxDecoration(
          color: Config.colorAfterScroll,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(300),
              bottomRight: Radius.circular(300)),
          image: DecorationImage(
              image: NetworkImage(
                  'https://www.orfonline.org/wp-content/uploads/2020/10/P-1024x750.jpg'))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Spacer(),
          // const SizedBox(
          //   height: 50,
          // ),
          Text(
            Strings.expertTech,
            style: TextStyle(fontSize: 80, color: Config.whiteColor),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(Strings.weMakeBusiness,
              style: TextStyle(
                  fontSize: 28, color: Config.whiteColor, letterSpacing: 1)),
          // Spacer(),
          const SizedBox(
            height: 50,
          ),
          MaterialButton(
            height: 50,
            onPressed: () {},
            color: Colors.white.withOpacity(0.7),
            shape: CircleBorder(),
            child: const Icon(
              Icons.keyboard_arrow_down_sharp,
              size: 30,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
