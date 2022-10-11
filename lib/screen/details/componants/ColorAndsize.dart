import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';

class ColorandSize extends StatelessWidget {
  const ColorandSize({
    Key? key,
    required this.productis,
  }) : super(key: key);

  final product productis;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('color'),
              
              Row(
                children: [
                  ColorDot(
                    color: Color(0xFF356C95),
                    isselected: true,
                  ),
                
              ColorDot(
                color: Color(0xFFF8C078),
                isselected: false,
              ),
              ColorDot(
                color: Color(0xFFA29B9B),
                isselected: true,
              ),],
              ),
            ],
          ),
        ),
        SizedBox(width: 80,)
        ,
        Expanded(
          child: RichText(text: TextSpan(style: TextStyle(color: kTextColor),children: [
            TextSpan(text: 'size\n',
            ),
            TextSpan(text: '${productis.size}cm',style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold),
            ),
        
          ])),
        )
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isselected;
  const ColorDot({
    Key? key,
    required this.color,
    required this.isselected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: kDefaultPaddin / 4, right: kDefaultPaddin / 2),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color: color)),
      child: DecoratedBox(
          decoration:
              BoxDecoration(color: color, shape: BoxShape.circle)),
    );
  }
}
