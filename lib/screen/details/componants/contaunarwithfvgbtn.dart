import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'cartCountaner.dart';

class contaunarwathfvgbtn extends StatelessWidget {
  const contaunarwathfvgbtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Cartcountar(),
        Container(
          padding: EdgeInsets.all(8),
          width: 32,
          height: 32,
          decoration: BoxDecoration(color: Color(0xFFFF6464),
          shape: BoxShape.circle),
          child: SvgPicture.asset('assets/icons/heart.svg'),
        )
      ],
    );
  }
}
