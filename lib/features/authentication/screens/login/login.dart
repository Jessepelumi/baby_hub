import 'package:get/get.dart';
import 'package:paalii/common/styles/spacing_styles.dart';
import 'package:paalii/common/widgets/login_signup/form_divider.dart';
import 'package:paalii/common/widgets/login_signup/social_buttons.dart';
import 'package:paalii/features/authentication/screens/login/widgets/login_form.dart';
import 'package:paalii/features/authentication/screens/login/widgets/login_header.dart';
import 'package:paalii/utils/constants/sizes.dart';
import 'package:paalii/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // logo, title & subtitle
              const LoginHeader(),

              // form
              const LoginForm(),

              // divider
              FormDivider(dividerText: TTextStrings.orSigninWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              // footer
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
