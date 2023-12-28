import 'package:fantasy_app/constants/my_constants.dart';
import 'package:fantasy_app/constants/my_dimens.dart';
import 'package:fantasy_app/widgets/details_widgets/dr_top_part.dart';
import 'package:fantasy_app/widgets/details_widgets/dt_product_item.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  static const routeName = "/home-screen";
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: MyDimens().getScaffolBackground(
        child: Column(children: [
          // profile img, title, search box
          SizedBox(height: size.height * .37, child: const DrTopPart()),
          const SizedBox(height: 20),
          // product list
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 10),
              itemCount: MyConstants().items.length,
              itemBuilder: (context, i) => DtProductItem(index: i),
            ),
          ),
        ]),
      ),
    );
  }
}
