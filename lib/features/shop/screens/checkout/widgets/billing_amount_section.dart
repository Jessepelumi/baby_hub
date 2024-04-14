import 'package:baby_hub/common/widgets/products/product_cards/product_price_text.dart';
import 'package:baby_hub/localization/naira_symbol.dart';
import 'package:baby_hub/utils/constants/colors.dart';
import 'package:baby_hub/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillingAmountSection extends StatelessWidget {
  const BillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Subtotal", style: Theme.of(context).textTheme.bodyMedium),
            ProductPriceText(
              price: "49,400",
              currency: getNaira(),
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),

        // Shipping fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Shipping Fee", style: Theme.of(context).textTheme.bodyMedium),
            ProductPriceText(
              price: "900",
              currency: getNaira(),
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),

        // Tax fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Tax Fee", style: Theme.of(context).textTheme.bodyMedium),
            ProductPriceText(
              price: "247",
              currency: getNaira(),
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),

        // Order total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Order Total",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .apply(color: TColors.primary),
            ),
            ProductPriceText(
              price: "50,547",
              currency: getNaira(),
              isOrder: true,
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
      ],
    );
  }
}
