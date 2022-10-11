import 'package:ecommeers/constants.dart';
import 'package:ecommeers/models/Product.dart';
import 'package:ecommeers/screen/details/componants/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Details_screen extends StatelessWidget {
  final product productss;
  const Details_screen({required this.productss});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: productss.color,
      appBar: buildAppBar(context),
      body: body(productis: productss),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: productss.color,
      elevation: 0,
      leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset('assets/icons/back.svg',color: Colors.white,),),
      actions: [
        IconButton(
            onPressed: () => Navigator.pop(context),
            icon: SvgPicture.asset('assets/icons/search.svg')),
        IconButton(
            onPressed: () => Navigator.pop(context),
            icon: SvgPicture.asset('assets/icons/cart.svg')),
            SizedBox(width: kDefaultPaddin/2,)
      ],
    );
  }
}
