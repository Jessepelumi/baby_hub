import 'package:baby_hub/common/styles/spacing_styles.dart';
import 'package:baby_hub/common/widgets/login_signup/form_divider.dart';
import 'package:baby_hub/common/widgets/login_signup/social_buttons.dart';
import 'package:baby_hub/features/authentication/screens/login/widgets/login_form.dart';
import 'package:baby_hub/features/authentication/screens/login/widgets/login_header.dart';
import 'package:baby_hub/utils/constants/sizes.dart';
import 'package:baby_hub/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
