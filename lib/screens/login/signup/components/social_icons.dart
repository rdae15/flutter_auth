import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/svg.dart';


class SocialIcon extends StatelessWidget {
  final  String image;
  final Function() press;
  const SocialIcon({
    Key? key, 
    required this.image, 
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryLightColor,
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          image,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}


