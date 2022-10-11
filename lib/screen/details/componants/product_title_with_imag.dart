import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';

class productTitlewithimage extends StatelessWidget {
  const productTitlewithimage({
    Key? key,
    required this.productis,
  }) : super(key: key);

  final product productis;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Aristocratic Hand Bag',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            productis.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: kDefaultPaddin,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 80),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(text: 'prise\n'),
                    TextSpan(
                        text: '\$${productis.price}',
                        style: Theme.of(context).textTheme.headline4?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold))
                  ]),
                ),
              ),
              SizedBox(
                width: kDefaultPaddin,
              ),
              Expanded(
                  child: Hero(
                    tag: '${productis.id}',
                    child: Image.asset(
                                  productis.image,
                                  fit: BoxFit.fitWidth,
                                ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
