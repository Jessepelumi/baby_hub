import 'package:paalii/features/authentication/screens/signup/verify_email.dart';
import 'package:paalii/features/authentication/screens/signup/widgets/t_and_c_checkbox.dart';
import 'package:paalii/utils/constants/colors.dart';
import 'package:paalii/utils/constants/sizes.dart';
import 'package:paalii/utils/constants/text_strings.dart';
import 'package:paalii/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: TTextStrings.firstName,
                    //prefixIcon: Icon(Iconsax.user),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: dark ? TColors.grey : TColors.darkerGrey,
                          width: 2),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: TColors.primary, width: 2),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwInputFields * 1.5),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: TTextStrings.lastName,
                    //prefixIcon: Icon(Iconsax.user),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: dark ? TColors.grey : TColors.darkerGrey,
                          width: 2),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: TColors.primary, width: 2),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Username
          TextFormField(
            decoration: InputDecoration(
              labelText: TTextStrings.username,
              //prefixIcon: Icon(Iconsax.user_edit),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: dark ? TColors.grey : TColors.darkerGrey, width: 2),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: TColors.primary, width: 2),
              ),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Email
          TextFormField(
            decoration: InputDecoration(
              labelText: TTextStrings.email,
              //prefixIcon: Icon(Iconsax.direct),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: dark ? TColors.grey : TColors.darkerGrey, width: 2),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: TColors.primary, width: 2),
              ),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Phone Number
          TextFormField(
            decoration: InputDecoration(
              labelText: TTextStrings.phoneNo,
              //prefixIcon: Icon(Iconsax.call),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: dark ? TColors.grey : TColors.darkerGrey, width: 2),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: TColors.primary, width: 2),
              ),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Password
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: TTextStrings.password,
              //prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: const Icon(Iconsax.eye_slash),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: dark ? TColors.grey : TColors.darkerGrey, width: 2),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: TColors.primary, width: 2),
              ),
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
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
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
