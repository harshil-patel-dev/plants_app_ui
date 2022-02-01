import 'package:flutter/material.dart';
import 'package:plants_app_flutter/constants.dart';

class TitlewithMoreButton extends StatelessWidget {
  const TitlewithMoreButton({
    Key? key, required this.title, required this.press,
  }) : super(key: key);

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
           TitlewithCustomUnderline(text: title),
          Spacer(),
          TextButton(
            style: TextButton.styleFrom(
              
              primary: Colors.white,
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              
            ),
            onPressed: press() ,
            child: const Text("More",style: TextStyle(color: Colors.white),),
          )
        ],
      ),
    );
  }
}

class TitlewithCustomUnderline extends StatelessWidget {
  const TitlewithCustomUnderline({
    Key? key,required this.text
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
           Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding/4),
            child: Text(
              text,
              style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,left: 0,right: 0,
            child: Container(
              margin: const EdgeInsets.only(left: kDefaultPadding/4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ))
        ],
      ),
    );
  }
}
