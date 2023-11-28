import 'package:flutter/material.dart';
import 'package:scipro/presentation/resources/assets_manager.dart';
import 'package:scipro/presentation/resources/color_manager.dart';
import 'package:scipro/presentation/sign_in/sign_up_page.dart';
import 'package:scipro/presentation/widgets/bottom_container.dart';
import 'package:scipro/presentation/widgets/common_button_widget.dart';
import 'package:scipro/presentation/widgets/common_textfield.dart';
import 'package:scipro/presentation/widgets/primary_font_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size sWidth = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 500,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImageAssets
                        .signincover), // Replace with your image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 500,
                color: Colors.blue.withOpacity(0.7),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 50.0),
                      child: PrimaryFontWidget(
                          text: 'Sign In',
                          fontSize: 70,
                          fontweight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                //
                // Adjust opacity and color as needed
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                right: sWidth.width / 3,
                left: sWidth.width / 3,
                top: 100,
                bottom: 25),
            child:
                const CommonTextField(hintText: 'Email ID', borderRadius: 10),
          ),
          Padding(
            padding: EdgeInsets.only(
                right: sWidth.width / 3,
                left: sWidth.width / 3,
                top: 25,
                bottom: 25),
            child:
                const CommonTextField(hintText: 'Password', borderRadius: 10),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 2.4,
                right: MediaQuery.of(context).size.width / 2.4),
            child: CommonButtonWidget(
                color: ColorManager.primary,
                text: 'Sign In',
                textColor: Colors.black),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const PrimaryFontWidget(
                  text: 'Don\'t have an account?',
                  fontSize: 12,
                  fontweight: FontWeight.w500,
                  color: Colors.black),
              TextButton(
                onPressed: () {
                  showd(context);
                },
                child: PrimaryFontWidget(
                    text: 'Sign Up',
                    fontSize: 13,
                    fontweight: FontWeight.w500,
                    color: ColorManager.primary),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const BottomContainer()
        ],
      ),
    );
  }
}
