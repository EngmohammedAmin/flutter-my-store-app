import 'package:flutter/material.dart';
import 'package:my_store_app/constants.dart';

class ProdectImage extends StatelessWidget {
  const ProdectImage({
    super.key,
    required this.size,
    required this.image,
  });

  final Size size;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: size.width * .5,
      color: kBackgroundColor,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.width * .5,
            width: size.width * .5,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          if (image != '')
            Image.asset(
              image,
              height: size.width * .5,
              width: size.width * .5,
              fit: BoxFit.cover,
            )
        ],
      ),
    );
  }
}
