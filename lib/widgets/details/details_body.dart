import 'package:flutter/material.dart';
import 'package:my_store_app/constants.dart';
// import 'package:my_store_app/models/prodect.dart';
// import 'package:my_store_app/models/prodect.dart';
import 'package:my_store_app/widgets/details/prodect_image.dart';
import 'package:my_store_app/widgets/details/color_dot.dart';
// import 'package:my_store_app/screens/home_screen.dart';
// import 'package:my_store_app/constants.dart';
// import 'package:my_store_app/models/prodect.dart';

// import 'package:google_fonts/google_fonts.dart';
class ProdectDetailsBody extends StatelessWidget {
  const ProdectDetailsBody({super.key, this.prodect});
  // final Prodect prodect;
  final dynamic prodect;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: double.infinity,
          // color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: kPadding * 1.5),

          decoration: const BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: ProdectImage(
                  size: size,
                  image: prodect.image,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    colorDot(
                      fillColor: kDefaultIconDarkColor,
                      isSelected: true,
                    ),
                    const colorDot(
                      fillColor: Colors.blue,
                      isSelected: false,
                    ),
                    const colorDot(
                      fillColor: Colors.red,
                      isSelected: false,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  prodect.title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  ' السعــر :YR ${prodect.price}',
                  style: const TextStyle(
                    fontSize: 28,
                    color: Colors.amber,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            prodect.description,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        )
      ],
    );
  }
}
