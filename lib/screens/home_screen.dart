import 'package:fantasy_app/constants/my_constants.dart';
import 'package:fantasy_app/constants/my_dimens.dart';
import 'package:fantasy_app/models/product.dart';
import 'package:fantasy_app/widgets/home_widgets/home_navbar.dart';
import 'package:fantasy_app/widgets/home_widgets/home_top_part.dart';
import 'package:fantasy_app/widgets/home_widgets/home_top_texts.dart';
import 'package:fantasy_app/widgets/painters/details_painters/dt_item_img_painter.dart';
import 'package:fantasy_app/widgets/painters/home_painters/home_item_body_clipper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: MyDimens().getScaffolBackground(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HomeTopPart(),
            const SizedBox(height: 5),
            const HomeTopTexts(),
            const SizedBox(height: 10),
            Expanded(
              child: LayoutBuilder(
                builder: (context, constrain) => Column(
                  children: [
                    SizedBox(
                      height: constrain.maxHeight * .65,
                      child: HomeBodyMainList(constraints: constrain),
                    ),
                    Expanded(child: HomeBodyBottomList(constraints: constrain)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            const HomeNavBar(),
          ],
        ),
      ),
    );
  }
}

class HomeBodyMainList extends StatelessWidget {
  const HomeBodyMainList({super.key, required this.constraints});
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      child: Row(
        children: List.generate(
          3,
          (i) {
            final item = MyConstants().items[i];
            return Container(
              width: constraints.maxWidth * .8,
              height: constraints.maxHeight * .7,
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  _getImage(item),
                  Positioned.fill(
                    child: ClipPath(
                      clipper: HomeItemBodyClipper(),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          image: DecorationImage(
                              image: AssetImage(item.img), fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _getImage(Product item) => Positioned(
        left: -10,
        top: -20,
        width: 110,
        height: 110,
        child: CustomPaint(
          painter: const DtItemImgpainter(false),
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                item.rating,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              ),
            ),
          ),
        ),
      );
}

class HomeBodyBottomList extends StatelessWidget {
  const HomeBodyBottomList({super.key, required this.constraints});
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          4,
          (i) {
            return Container(
              width: constraints.maxWidth * .45,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: AssetImage(MyConstants().posters[i]),
                    fit: BoxFit.cover),
              ),
            );
          },
        ),
      ),
    );
  }
}
