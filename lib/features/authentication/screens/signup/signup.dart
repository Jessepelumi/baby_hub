import 'package:get/get.dart';
import 'package:paalii/common/widgets/appbar/appbar.dart';
import 'package:paalii/common/widgets/login_signup/form_divider.dart';
import 'package:paalii/common/widgets/login_signup/social_buttons.dart';
import 'package:paalii/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:paalii/utils/constants/sizes.dart';
import 'package:paalii/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

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
