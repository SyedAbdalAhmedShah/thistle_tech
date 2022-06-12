import 'package:app/utils/config.dart';
import 'package:app/utils/strings.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(300),
              bottomRight: Radius.circular(300)),
          image: DecorationImage(
              image: AssetImage(Strings.headerBackgroundImg),
              fit: BoxFit.fill)),
      child: Container(
        height: 550,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Config.color1.withOpacity(.9),
              Config.color2.withOpacity(.9),
              Config.color3.withOpacity(.9),
              Config.color4.withOpacity(.9),
              Config.color5.withOpacity(.9),
              Config.color6.withOpacity(.9),
              Config.color7.withOpacity(.9),
              Config.color8.withOpacity(.9),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: const [0, 0.2, 0.4, 0.6, 0.7, 0.8, 0.9, 1],
          ),
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(300),
              bottomRight: Radius.circular(300)),
        ),
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
              height: 80,
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
      ),
    );
  }
}
