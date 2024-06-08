// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:my_store_app/constants.dart';
import 'package:my_store_app/models/prodect.dart';

class ProductCard extends StatelessWidget {
  final itemIndex;
  final Prodect prodect;
  final void Function()? press;
  const ProductCard({
    super.key,
    this.itemIndex,
    required this.press,
    this.prodect = const Prodect(),
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      height: 190,
      // color: Colors.green,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 25,
                    color: Colors.black87,
                  )
                ],
              ),
            ),
            Positioned(
              left: 0,
              top: 25,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                height: 160,
                width: 200,
                child: Image.asset(
                  prodect.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 200,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          prodect.title,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          prodect.subtitle,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            color: kScondaryColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(prodect.price.toString()),
                        ),
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
