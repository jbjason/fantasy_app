import 'package:fantasy_app/constants/my_constants.dart';
import 'package:flutter/material.dart';
import 'package:fantasy_app/widgets/common_widgets/forsted_glass.dart';
import 'package:fantasy_app/widgets/painters/details_painters/dt_item_body_clipper.dart';
import 'package:fantasy_app/widgets/painters/details_painters/dt_item_img_painter.dart';
import 'dart:ui';
import 'package:fantasy_app/constants/my_dimens.dart';

class DtProductItem extends StatelessWidget {
  const DtProductItem({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      padding: const EdgeInsets.only(bottom: 5),
      color: Colors.transparent,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          _getImage(index),
          Positioned.fill(
            child: ClipPath(
              clipper: DtItemBodyClipper(),
              child: Stack(
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
                    height: 90,
                    child: Row(
                      children: [
                        const SizedBox(width: 130),
                        // title, subtitle, review, fees & location
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 7, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // title
                                Text(
                                  "Abdullah Al Jubayer",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white70),
                                ),
                                MyDimens()
                                    .getDoctorCategory("General Physician"),
                                _locationScheduleText(Icons.location_on, "3.5"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getImage(int index) {
    final img = MyConstants().items[index].img;
    return Positioned(
      left: 10,
      top: -20,
      width: 80,
      height: 80,
      child: CustomPaint(
        painter: const DtItemImgpainter(true),
        child: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  Widget _locationScheduleText(IconData icon, String title) => Row(
        children: [
          Icon(icon, size: 11),
          const SizedBox(width: 2),
          Expanded(
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 10, color: Colors.white60),
            ),
          ),
        ],
      );

  Widget _reviewsAndFees(int rating, int reviews, double fees) {
    final totalRating = '★' * rating + "☆" * (5 - rating);
    final review = reviews == 0 ? "No" : reviews;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // reviews
        RichText(
          text: TextSpan(
            text: totalRating,
            style: const TextStyle(color: Colors.cyan, fontSize: 10),
            children: [
              TextSpan(
                text: '   $review Reviews',
                style: const TextStyle(color: Colors.cyan, fontSize: 8),
              ),
            ],
          ),
        ),
        // fees
        Text('৳ $fees',
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white70)),
      ],
    );
  }
}
