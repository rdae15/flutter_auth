import 'package:flutter/material.dart';
import 'package:flutter_auth/componets/rounded_buttom.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/screens/login/login.dart';
import 'package:flutter_auth/screens/login/signup/signup_screen.dart';
import 'package:flutter_auth/screens/welcome/components/background.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Edu',
              style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox( height: size.height * 0.03),
              SvgPicture.asset(
                'assets/icons/chat.svg',
                height: size.height * 0.45,
              ),
              RoundedButton(
                text: 'LOGIN', 
                press: (){ 
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder:(context) {
                        return LoginScreen();
                      },
                    ),
                  );
                }, 
                ),
                RoundedButton(
                text: 'SIGN UP', 
                color: kPrimaryLightColor,
                textColor: Colors.black,
                press: (){
                  Navigator.push(
                        context, 
                        MaterialPageRoute(builder:(context){ 
                          return SignUpScreen();                   },
                 ),
                );
               }, 
            ),      
          ],
        ),
      ) ,
      );
  }
}

