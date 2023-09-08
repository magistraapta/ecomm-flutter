import 'package:code/theme/theme.dart';
import 'package:code/widget/custom_input.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  Widget header() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sign Up',
          style: whiteTextStyle.copyWith(fontSize: 24, fontWeight: semibold),
        ),
        Text(
          'Register and Happy Shopping',
          style: blackTextSTyle.copyWith(fontSize: 16, fontWeight: medium),
        )
      ],
    );
  }

  Widget customFormField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Username',
          style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          // width: double.infinity,
          height: 50,
          child: Row(
            children: [
              Image.asset(
                'assets/Email_Icon.png',
                width: 17,
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                  child: TextFormField(
                style: whiteTextStyle,
                decoration: InputDecoration.collapsed(
                    border: OutlineInputBorder(),
                    hintText: 'Your email here',
                    hintStyle: grayTextStyle),
              ))
            ],
          ),
          decoration: BoxDecoration(
              color: bgColor2, borderRadius: BorderRadius.circular(12)),
        )
      ],
    );
  }

  Widget textInput() {
    return Column(
      children: [
        CustomInput(
          label: 'Fullname',
          placeholder: 'Your fullname',
          iconUrl: 'Username_Icon.png',
        ),
        SizedBox(
          height: 20,
        ),
        CustomInput(
          label: 'Username',
          placeholder: 'Your username',
          iconUrl: 'Circle_Icon.png',
        ),
        SizedBox(
          height: 20,
        ),
        CustomInput(
          label: 'Email',
          placeholder: 'Your email',
          iconUrl: 'Email_Icon.png',
        ),
        SizedBox(
          height: 20,
        ),
        CustomInput(
          label: 'password',
          placeholder: 'password',
          iconUrl: 'Password_Icon.png',
        ),
      ],
    );
  }

  // Widget customButton() {
  //   return Container(
  //     width: double.infinity,
  //     height: 50,
  //     decoration: BoxDecoration(
  //       color: primaryColor,
  //       borderRadius: BorderRadius.circular(18),
  //     ),
  //     child: TextButton(
  //       onPressed: (){
  //         Navigator.pushNamed(context, '/sign-up');
  //       },
  //       child: Text(
  //         'Sign up',
  //         style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
  //       ),
  //     ),
  //   );
  // }

  Widget footer() {
    return Text(
      'Doesnt have account? Sign Up',
      style: blackTextSTyle.copyWith(fontSize: 12, fontWeight: regular),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor1,
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: SafeArea(
              child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  header(),
                  SizedBox(
                    height: 70,
                  ),
                  textInput(),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/home-page');
                      },
                      child: Text(
                        'Sign up',
                        style: whiteTextStyle.copyWith(
                            fontSize: 16, fontWeight: medium),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              footer()
            ],
          )),
        ));
  }
}
