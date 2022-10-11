import 'dart:ui';

import 'package:ecommeers/constants.dart';
import 'package:ecommeers/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'ColorAndsize.dart';
import 'Discription.dart';
import 'addtocarts.dart';
import 'cartCountaner.dart';
import 'contaunarwithfvgbtn.dart';
import 'product_title_with_imag.dart';

class body extends StatelessWidget {
  final product productis;
  const body({super.key, required this.productis});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.3),
                padding: EdgeInsets.only(
                  top: size.height * 0.18,
                  left: kDefaultPaddin,
                  right: kDefaultPaddin,
                ),
                height: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24))),
                child: Column(
                  children: [
                    ColorandSize(productis: productis),
                    Description(productis: productis),
                    contaunarwathfvgbtn(),
                    SizedBox(height: kDefaultPaddin/2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Addtocart(productis: productis),
                        Expanded(
                          child: SizedBox(
                            height: 50,
                            width:250,
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: productis.color,
                                borderRadius: BorderRadius.circular(18),
                                border: Border.all(color: productis.color),
                              ),
                                  child: 
                                  Text(
                                'Buy Now'.toUpperCase(),
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold,color: Colors.white),
                              )),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              productTitlewithimage(productis: productis)
            ]),
          )
        ],
      ),
    );
  }
}
