import 'package:flutter/material.dart';
import 'my_color.dart';

class MyDimens {
  static const bodyGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Colors.white, Colors.white, Color(0xB3FFFFFF), Color(0x62FFFFFF)],
  );

  Gradient getHomeGradient(Color color) => LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          color.withOpacity(.9),
          color.withOpacity(.6),
          color.withOpacity(.4)
        ],
      );

  static const bodyShadow = [
    BoxShadow(
      color: Color.fromARGB(255, 144, 176, 208),
      blurRadius: 40,
      offset: Offset(5, 2),
    ),
    BoxShadow(
      color: Colors.white,
      blurRadius: 40,
      offset: Offset(-5, -2),
    ),
  ];

  Widget getDoctorCategory(String title) => Container(
        padding: const EdgeInsets.only(left: 7, top: 3, bottom: 3, right: 14),
        margin: const EdgeInsets.only(bottom: 5),
        decoration: const BoxDecoration(
          color: MyColor.blueSecondary,
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(4),
            right: Radius.circular(14),
          ),
        ),
        child: Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 9, color: Colors.white),
        ),
      );

  Container getButtonStyle({required Widget child}) => Container(
        height: kBottomNavigationBarHeight,
        margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: MyColor.bluePrimary,
          boxShadow: bodyShadow,
        ),
        child: child,
      );

  DecoratedBox getScaffolBackground({required Widget child}) => DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back_5.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: child),
        ),
      );
}
