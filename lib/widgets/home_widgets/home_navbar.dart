import 'dart:ui';
import 'package:fantasy_app/constants/my_constants.dart';
import 'package:fantasy_app/widgets/common_widgets/forsted_glass.dart';
import 'package:flutter/material.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kBottomNavigationBarHeight + 5,
      child: ClipRect(
        child: Stack(
          fit: StackFit.expand,
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 7.0,
                sigmaY: 7.0,
              ),
              child: const SizedBox(
                  width: double.infinity, height: 135, child: Text(" ")),
            ),
            FrostedGlassBox(
              width: double.infinity,
              height: kBottomNavigationBarHeight + 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: List.generate(
                  MyConstants().navIcons.length,
                  (index) => Center(
                    child: Icon(
                      MyConstants().navIcons[index],
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
