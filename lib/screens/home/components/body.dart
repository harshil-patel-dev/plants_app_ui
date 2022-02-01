import 'package:flutter/material.dart';
import 'package:plants_app_flutter/constants.dart';
import 'package:plants_app_flutter/screens/home/components/featured_plants.dart';
import 'package:plants_app_flutter/screens/home/components/header_with_seachbox.dart';
import 'package:plants_app_flutter/screens/home/components/recomend_plants.dart';
import 'package:plants_app_flutter/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderwithSearchbox(size: size),
          TitlewithMoreButton(title: "Recomended",press: (){}),
          const RecomendPlants(),
          TitlewithMoreButton(title: "Featured Plants", press: (){}),
          const FeaturedPlants(),
          const SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}

