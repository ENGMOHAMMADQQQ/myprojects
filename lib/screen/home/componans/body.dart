import 'package:ecommeers/models/Product.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ecommeers/constants.dart';

import '../../details/details_screen.dart';
import 'Items_card.dart';
import 'catogares.dart';

class body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            'women',
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        catogares(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              physics: BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  crossAxisCount: 2,
                  childAspectRatio: 0.75),
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) => ItemsCard(
                productss: products[index], press:() =>Navigator.push(context, MaterialPageRoute(builder: (context)=>Details_screen(productss: products[index],))),
              ),
            ),
          ),
        )
      ],
    );
  }
}
