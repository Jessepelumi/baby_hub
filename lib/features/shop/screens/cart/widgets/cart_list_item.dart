import 'package:paalii/common/widgets/products/cart/add_remove_button.dart';
import 'package:paalii/common/widgets/products/cart/cart_item.dart';
import 'package:paalii/common/widgets/products/product_cards/product_price_text.dart';
import 'package:paalii/localization/naira_symbol.dart';
import 'package:paalii/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartListItem extends StatelessWidget {
  const CartListItem({
    super.key,
    this.showQuantityButtons = true,
  });

  final bool showQuantityButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) =>
          const SizedBox(height: TSizes.spaceBtwSections),
      itemCount: 4,
      itemBuilder: (_, index) => Column(
        children: [
          const CartItemWidget(),
          if (showQuantityButtons) const SizedBox(height: TSizes.spaceBtwItems),
          if (showQuantityButtons)
            Row(
              children: [
                const SizedBox(width: 70),
                // Add & remove button
                const ProductQuantityWidget(),
                const SizedBox(width: TSizes.spaceBtwItems),
                ProductPriceText(
                  price: "7100",
                  currency: getNaira(),
                ),
              ],
            )
        ],
      ),
    );
  }
}
