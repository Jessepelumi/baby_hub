import 'package:paalii/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:paalii/features/authentication/screens/signup/signup.dart';
import 'package:paalii/navigation_menu.dart';
import 'package:paalii/utils/constants/colors.dart';
import 'package:paalii/utils/constants/sizes.dart';
import 'package:paalii/utils/constants/text_strings.dart';
import 'package:paalii/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: TSizes.spaceBtwSections,
        ),
        child: Column(
          children: [
            // email
            TextFormField(
              decoration: InputDecoration(
                //prefixIcon: Icon(Iconsax.send_2),
                labelText: TTextStrings.email,
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
            const SizedBox(height: TSizes.spaceBtwInputFields),

            // password
            TextFormField(
              decoration: InputDecoration(
                //prefixIcon: Icon(Iconsax.password_check),
                labelText: TTextStrings.password,
                suffixIcon: const Icon(Iconsax.eye_slash),
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
            const SizedBox(height: TSizes.spaceBtwInputFields / 2),

            // remember me & forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // remember me
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    const Text(
                      TTextStrings.rememberMe,
                    ),
                  ],
                ),

                // forget password
                TextButton(
                  onPressed: () => Get.to(() => const ForgotPassword()),
                  child: const Text(
                    TTextStrings.forgotPassword,
                    style: TextStyle(color: TColors.primary),
                  ),
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            // sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()),
                child: Text(
                  TTextStrings.signin,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .apply(color: TColors.white),
                ),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            // create an account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const Signup()),
                child: Text(
                  TTextStrings.createAccount,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
