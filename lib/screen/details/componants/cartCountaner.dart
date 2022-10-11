import 'package:flutter/material.dart';

import '../../../constants.dart';

class Cartcountar extends StatefulWidget {
  const Cartcountar({super.key});

  @override
  State<Cartcountar> createState() => _CartcountarState();
}

class _CartcountarState extends State<Cartcountar> {
  @override
  int numperItime = 1;
  Widget build(BuildContext context) {
    return Row(
      children: [
        outlinebutton(
          icon: Icons.remove,
          press: () {
            setState(() {
              if (numperItime>1) {
                numperItime--;
              }
              
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
            numperItime.toString().padLeft(2, '0'),
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        outlinebutton(
          icon: Icons.add,
          press: () {
            setState(() {
              numperItime++;
            });
          },
        )
      ],
    );
  }
}

class outlinebutton extends StatelessWidget {
  IconData? icon;
  Function? press;
  outlinebutton({this.icon, this.press});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 40,
        height: 32,
        child: InkWell(
          onTap: () {
            press!();
          },
          child: Container(
            child: Icon(icon),
            decoration: BoxDecoration(
                border: Border.all(color: kTextLightColor),
                borderRadius: BorderRadius.circular(10)),
          ),
        ));
  }
}
