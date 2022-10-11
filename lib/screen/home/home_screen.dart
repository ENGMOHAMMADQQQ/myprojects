import 'package:ecommeers/screen/home/componans/body.dart';
import 'package:flutter/material.dart';
import 'package:ecommeers/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {},
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/search.svg',
                color: kTextColor)),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/cart.svg',
                color: kTextColor)),SizedBox(width: kDefaultPaddin/2,)
      ],
    );
  }
}
