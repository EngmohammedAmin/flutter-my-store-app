import 'package:flutter/material.dart';
// import 'package:my_store_app/screens/home_screen.dart';
import 'package:my_store_app/constants.dart';
// import 'package:my_store_app/models/prodect.dart';
// import 'package:my_store_app/widgets/home/home_body.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:my_store_app/widgets/details/details_body.dart';
// import 'package:my_store_app/widgets/details/prodect_image.dart';
// import 'package:my_store_app/widgets/details/color_dot.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, this.prodectDetails});
  final dynamic prodectDetails;
  // final Prodect prodectDetails;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(),
      body: ProdectDetailsBody(prodect: prodectDetails),
    );
  }

  AppBar detailsAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: Text(
        ' تفاصيل المنتج :( ${prodectDetails.title}) ',
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ],
    );
  }
}
