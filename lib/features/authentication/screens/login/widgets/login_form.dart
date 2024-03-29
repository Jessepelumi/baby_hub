import 'package:baby_hub/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:baby_hub/features/authentication/screens/signup/signup.dart';
import 'package:baby_hub/navigation_menu.dart';
import 'package:baby_hub/utils/constants/colors.dart';
import 'package:baby_hub/utils/constants/sizes.dart';
import 'package:baby_hub/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: TSizes.spaceBtwSections,
        ),
        child: Column(
          children: [
            // email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.send_2),
                labelText: TTextStrings.email,
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),

            // password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TTextStrings.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields / 2,
            ),

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
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            // sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()),
                child: const Text(TTextStrings.signin),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            // create an account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const Signup()),
                child: const Text(TTextStrings.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
