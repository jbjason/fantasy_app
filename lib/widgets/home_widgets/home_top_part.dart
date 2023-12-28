import 'package:fantasy_app/constants/my_constants.dart';
import 'package:fantasy_app/screens/details_screen.dart';
import 'package:flutter/material.dart';

class HomeTopPart extends StatelessWidget {
  const HomeTopPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white60,
              child: CircleAvatar(
                radius: 19,
                backgroundImage: AssetImage('assets/images/profile_1.jpg'),
              ),
            ),
            Image.asset('assets/images/logo_1r.png', height: 70),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const DetailsScreen()),
                );
              },
              child: Container(
                height: 40,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white24,
                ),
                child: const Icon(Icons.search_outlined),
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              4,
              (i) {
                final itemList = MyConstants().items;
                final item = itemList[(itemList.length - 1) - i];
                return Container(
                  width: 70,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(item.img),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 7),
        Container(
          height: 1.5,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Image.asset(
            'assets/images/flare.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
