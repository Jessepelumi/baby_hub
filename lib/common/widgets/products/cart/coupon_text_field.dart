import 'package:baby_hub/utils/constants/colors.dart';
import 'package:baby_hub/utils/constants/sizes.dart';
import 'package:baby_hub/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CouponTextField extends StatelessWidget {
  const CouponTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Padding(
      padding: EdgeInsets.only(
        top: TSizes.sm,
        bottom: TSizes.sm,
        right: TSizes.sm,
        left: TSizes.md,
      ),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Have a promo code? Enter here.",
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
          SizedBox(width: TSizes.spaceBtwInputFields),
          ElevatedButton(
            onPressed: () {},
            child: Icon(Iconsax.arrow_right_1),
            style: ElevatedButton.styleFrom(
              backgroundColor: TColors.grey.withOpacity(0.5),
              foregroundColor:
                  dark ? TColors.white.withOpacity(0.7) : TColors.darkGrey,
              side: BorderSide(
                color: TColors.grey.withOpacity(0.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
