import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.productis,
  }) : super(key: key);

  final product productis;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(productis.description,style: TextStyle(height: 1.5),),
    );
  }
}
