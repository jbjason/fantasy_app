import 'package:fantasy_app/widgets/painters/details_painters/dt_item_img_painter.dart';
import 'package:flutter/material.dart';

class DrTopPart extends StatelessWidget {
  const DrTopPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 160,
                height: 160,
                child: CustomPaint(
                  painter: const DtItemImgpainter(true),
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/profile_1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Name Id',
                style: TextStyle(color: Colors.white24, fontSize: 12),
              ),
              const SizedBox(height: 5),
              const Text(
                'Abdullah Al Jubayer',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search_outlined,
                        color: Colors.white24,
                      ),
                      hintText: 'Search Product',
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      filled: true,
                      fillColor: Colors.white12,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // back button
          Positioned(
            left: 0,
            top: 10,
            height: 45,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white24,
                ),
                child: const Icon(Icons.arrow_back_ios_new),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
