import 'package:baby_hub/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:baby_hub/utils/constants/colors.dart';
import 'package:baby_hub/utils/constants/sizes.dart';
import 'package:baby_hub/utils/constants/text_strings.dart';
import 'package:baby_hub/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              CupertinoIcons.clear,
              color: dark ? TColors.white : TColors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Headings
            Text(
              TTextStrings.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(
              TTextStrings.forgotPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: TSizes.spaceBtwSections * 2),

            // Textfield
            TextFormField(
              decoration: InputDecoration(
                labelText: TTextStrings.email,
                //prefixIcon: Icon(Iconsax.direct_right),
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
            const SizedBox(height: TSizes.spaceBtwSections),

            // Submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => const ResetPassword()),
                child: Text(
                  TTextStrings.submit,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .apply(color: TColors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
