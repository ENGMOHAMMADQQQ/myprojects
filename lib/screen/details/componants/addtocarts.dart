import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';

class Addtocart extends StatelessWidget {
  const Addtocart({
    Key? key,
    required this.productis,
  }) : super(key: key);

  final product productis;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPaddin),
      child: Container(
      margin: EdgeInsets.only(right: kDefaultPaddin),

        child: IconButton(
          icon: SvgPicture.asset(
              'assets/icons/add_to_cart.svg',color: productis.color,),
          onPressed: () {},
        ),
        height: 50,
        width: 58,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: productis.color),
        ),
      ),
    );
  }
}
