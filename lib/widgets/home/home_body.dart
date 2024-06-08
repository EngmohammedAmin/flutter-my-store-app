// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:my_store_app/constants.dart';
import 'package:my_store_app/models/prodect.dart';
import 'package:my_store_app/screens/details_screen.dart';
import 'package:my_store_app/widgets/home/prodect_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
    // this.prodect = const Prodect(),
  });
  // final Prodect prodect;
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 70),
                  decoration: const BoxDecoration(
                    // color: Colors.white,
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                  ),
                ),
                ListView.builder(
                  itemCount: prodects.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    prodect: prodects[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailsScreen(prodectDetails: prodects[index]),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
