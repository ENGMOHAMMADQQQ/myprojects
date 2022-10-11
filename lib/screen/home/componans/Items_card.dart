import 'package:flutter/material.dart';
import 'package:ecommeers/constants.dart';

import '../../../models/Product.dart';

class ItemsCard extends StatelessWidget {
  final product productss;
  final Function? press;
  const ItemsCard({
    Key? key,
    required this.productss,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              press!();
            },
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              decoration: BoxDecoration(
                  color: productss.color,
                  borderRadius: BorderRadius.circular(16)),
              child: Hero(tag: '${productss.id}',
              child: Image.asset(productss.image)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
          child: Text(
            products[0].title,
            style: TextStyle(color: kTextLightColor),
          ),
        ),
        Text(
          '\$${productss.price}',
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
