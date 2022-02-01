
import 'package:flutter/material.dart';
import 'package:plants_app_flutter/constants.dart';

class DetailsFooter extends StatelessWidget {
  const DetailsFooter({
    Key? key,
    
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
            width: size.width / 2,
            height: 80,
            child: TextButton(
              style: TextButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(20)),
                ),
                backgroundColor: kPrimaryColor,
              ),
              onPressed: () {},
              child: const Text(
                "Buy Now",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            )
        ),
        Expanded(
          
          child: Container(
            height: 80,
            child: TextButton(
                
                onPressed: () {},
                child: const Text(
                  "Description",
                  style: TextStyle(color: kTextColor, fontSize: 16),
                ),
              ),
          )
        )

      ],
    );
  }
}
