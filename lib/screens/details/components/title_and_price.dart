
import 'package:flutter/material.dart';
import 'package:plants_app_flutter/constants.dart';

class TitleandPrice extends StatelessWidget {
  const TitleandPrice({
    Key? key,
    required this.title,required this.country, required this.price,
  }) : super(key: key);

  final String title,country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
            children: [
              TextSpan(
              text: "$title \n",
              style: Theme.of(context).textTheme.headline4!.copyWith(
                fontWeight: FontWeight.bold,
                color: kTextColor
              ),
            ),
             TextSpan(
              text: country , style: const TextStyle(
                fontSize: 20,
                color: kPrimaryColor,
                fontWeight: FontWeight.w300,
              )
            )
            ]
          )
          ),
          Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context)
            .textTheme.headline5!.copyWith(color:kPrimaryColor),
          )
        ],
      ),
    );
  }
}
