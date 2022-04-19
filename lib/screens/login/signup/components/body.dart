

import 'package:flutter/material.dart';
import 'package:flutter_auth/componets/already_have_an_account.dart';
import 'package:flutter_auth/componets/rounded_buttom.dart';
import 'package:flutter_auth/componets/rounded_input_field.dart';
import 'package:flutter_auth/componets/rounded_password_field.dart';
import 'package:flutter_auth/screens/login/login.dart';
import 'package:flutter_auth/screens/login/signup/components/background.dart';
import 'package:flutter_auth/screens/login/signup/components/or_divider.dart';
import 'package:flutter_auth/screens/login/signup/components/social_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[          
            Text(
              'SIGNUP',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              'assets/icons/signup.svg',
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: 'Your Email', 
              onChanged: (value){},
              ),
              RoundedPasswordField(
                onChanged: (value){}
              ),
              RoundedButton(
                text: 
                'SIGNUP', 
                press: (){},
                ),
                SizedBox(height: size.height * 0.03),
                AlreadyHaveAnAccontCheck(
                  login: false, 
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
                      }
                  )
               );
             },
           ),
           OrDivider(),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
                SocialIcon(image: 'assets/icons/facebook.svg', press: (){}),
                SocialIcon(image: 'assets/icons/twitter.svg', press: (){}),
                SocialIcon(image: 'assets/icons/google-plus.svg', press: (){}),
             ],
           )
          ],
        ),
      ),
    );
  }
}
