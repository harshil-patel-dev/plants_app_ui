import 'package:flutter/material.dart';

import 'package:plants_app_flutter/screens/details/components/body.dart';
import 'package:plants_app_flutter/screens/details/components/details_footer.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
     // bottomNavigationBar: DetailsFooter(),
    );
  }
}