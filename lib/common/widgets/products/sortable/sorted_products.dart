import 'package:baby_hub/common/widgets/layout/grid_layout.dart';
import 'package:baby_hub/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:baby_hub/utils/constants/colors.dart';
import 'package:baby_hub/utils/constants/sizes.dart';
import 'package:baby_hub/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // Dropdown
        DropdownButtonFormField(
          decoration: InputDecoration(
            prefixIcon: const Icon(Iconsax.sort),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: dark ? TColors.grey : TColors.darkerGrey, width: 1),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: TColors.primary, width: 1),
            ),
          ),
          items: [
            "Name",
            "Higher Price",
            "Lower Price",
            "Sale",
            "Newest",
            "Popularity"
          ]
              .map((option) => DropdownMenuItem(
                    value: option,
                    child: Text(option),
                  ))
              .toList(),
          onChanged: (value) {},
        ),
        const SizedBox(height: TSizes.defaultSpace),

        // Products
        GridLayoutWIdget(
          itemCount: 6,
          itemBuilder: (_, index) => const ProductCardVertical(),
        ),
      ],
    );
  }
}
