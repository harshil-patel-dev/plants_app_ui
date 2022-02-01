import 'package:flutter/material.dart';
import 'package:plants_app_flutter/constants.dart';
import 'package:plants_app_flutter/screens/details/components/details_footer.dart';
import 'package:plants_app_flutter/screens/details/components/img_with_iconCard.dart';
import 'package:plants_app_flutter/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageWithIconCard(size: size),
          const TitleandPrice(
            title: "Angelica",
            country: "Russia",
            price: 400,
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          DetailsFooter(),
          //const SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}
