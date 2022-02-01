
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:plants_app_flutter/constants.dart';

class HeaderwithSearchbox extends StatelessWidget {
  const HeaderwithSearchbox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding *2.5),
      height: size.height * 0.2, //covers 20% of total height
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding,
            ),
            height: size.height * 0.2 - 27,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'Hi Ui Shopy!',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold
                  ),
                ),
                const Spacer(),
                Image.asset("assets/images/logo.png")
              ],
            ),
          ),
          Positioned(      //SearchBox Container
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ]
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                       decoration: InputDecoration(
                        hintText: "Search",
                        contentPadding: const EdgeInsets.symmetric(horizontal: 25.0),
                        hintStyle: TextStyle(
                          color : kPrimaryColor.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: SvgPicture.asset("assets/icons/search.svg"),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
