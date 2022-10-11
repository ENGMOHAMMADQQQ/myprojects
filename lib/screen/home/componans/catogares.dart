import 'package:flutter/material.dart';
import 'package:ecommeers/constants.dart';

class catogares extends StatefulWidget {
  const catogares({super.key});

  @override
  State<catogares> createState() => _catogaresState();
}

class _catogaresState extends State<catogares> {
  // ignore: non_constant_identifier_names
  List<String> catogaris = ['Hand Pag', 'Jewellery', 'Footwear', 'Dresses'];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: catogaris.length,
            itemBuilder: (BuildContext context, int index) => buildText(index)),
      ),
    );
  }

  Widget buildText(int index) => GestureDetector(
        onTap: () {
          setState(() {
            selectedindex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                catogaris[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: selectedindex == index ? kTextColor : kTextLightColor,
                ),
              ),
              Container(
                height: 2,
                width: 30,
                color:
                    selectedindex == index ? Colors.black : Colors.transparent,
                margin: EdgeInsets.only(top: kDefaultPaddin / 4),
              )
            ],
          ),
        ),
      );
}
