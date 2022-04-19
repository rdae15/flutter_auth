import 'package:flutter/material.dart';
import 'package:flutter_auth/componets/already_have_an_account.dart';
import 'package:flutter_auth/componets/rounded_buttom.dart';
import 'package:flutter_auth/componets/rounded_input_field.dart';
import 'package:flutter_auth/componets/rounded_password_field.dart';
import 'package:flutter_auth/screens/login/components/background.dart';
import 'package:flutter_auth/screens/login/signup/signup_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
  // ignore: unused_local_variable
  Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[ 
            Text(
              'LOGIN', 
              style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset('assets/icons/login.svg',
              height: size.height * 0.333,
              ),
              SizedBox(height: size.height * 0.03),
              RoundedInputField(
                hintText: 'Your Email',
                onChanged: (value){},
                ),
                RoundedPasswordField(
                  onChanged: (value){},
                ),
                RoundedButton(
                  text: 'LOGIN', 
                  press: (){}
                  ),
                  SizedBox(height: size.height * 0.03),
                  AlreadyHaveAnAccontCheck(
                    press: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder:(context){ 
                          return SignUpScreen();
                        },
                      ),
                   );
                  },
               )
           ],
        ),
      ),
    );
  }
}






