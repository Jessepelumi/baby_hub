import 'package:baby_hub/common/widgets/appbar/appbar.dart';
import 'package:baby_hub/common/widgets/login_signup/form_divider.dart';
import 'package:baby_hub/common/widgets/login_signup/social_buttons.dart';
import 'package:baby_hub/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:baby_hub/utils/constants/sizes.dart';
import 'package:baby_hub/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                TTextStrings.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Signup Form
              const SignupForm(),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Divider
              FormDivider(
                dividerText: TTextStrings.orSignupWith.capitalize!,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Social buttons
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
