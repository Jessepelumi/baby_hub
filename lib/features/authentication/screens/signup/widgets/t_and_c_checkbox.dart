import 'package:baby_hub/utils/constants/colors.dart';
import 'package:baby_hub/utils/constants/sizes.dart';
import 'package:baby_hub/utils/constants/text_strings.dart';
import 'package:baby_hub/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsCheckbox extends StatelessWidget {
  const TermsAndConditionsCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        Flexible(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "${TTextStrings.iAgreeTo} ",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: TTextStrings.privacyPolicy,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? TColors.white : TColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: dark ? TColors.white : TColors.primary,
                      ),
                ),
                TextSpan(
                  text: " ${TTextStrings.and} ",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: TTextStrings.termsOfService,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? TColors.white : TColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: dark ? TColors.white : TColors.primary,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
