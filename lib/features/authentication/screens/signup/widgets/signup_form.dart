import 'package:paalii/features/authentication/controllers/signup/signup_controller.dart';
import 'package:paalii/features/authentication/screens/signup/widgets/t_and_c_checkbox.dart';
import 'package:paalii/utils/constants/colors.dart';
import 'package:paalii/utils/constants/sizes.dart';
import 'package:paalii/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:paalii/utils/validators/validation.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());

    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) => TValidator.validateEmptyText(value),
                  expands: false,
                  decoration: InputDecoration(
                    labelText: TTextStrings.firstName,
                  ),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwInputFields * 1.5),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) => TValidator.validateEmptyText(value),
                  expands: false,
                  decoration: InputDecoration(
                    labelText: TTextStrings.lastName,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Email
          TextFormField(
            controller: controller.email,
            validator: (value) => TValidator.validateEmail(value),
            decoration: InputDecoration(
              labelText: TTextStrings.email,
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Phone Number
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => TValidator.validatePhoneNumber(value),
            decoration: InputDecoration(
              labelText: TTextStrings.phoneNo,
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Password
          TextFormField(
            controller: controller.password,
            validator: (value) => TValidator.validatePassword(value),
            obscureText: true,
            decoration: InputDecoration(
              labelText: TTextStrings.password,
              suffixIcon: const Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Confirm Password
          TextFormField(
            controller: controller.confirmPasswword,
            validator: (value) => TValidator.validateConfirmPassword(value),
            obscureText: true,
            decoration: InputDecoration(
              labelText: TTextStrings.confirmPassword,
              suffixIcon: const Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // T&Cs checkbox
          const TermsAndConditionsCheckbox(),
          const SizedBox(height: TSizes.spaceBtwSections),

          // Signup button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signup(),
              child: Text(
                TTextStrings.createAccount,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .apply(color: TColors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
