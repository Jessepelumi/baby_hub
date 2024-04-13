import 'package:baby_hub/common/widgets/appbar/appbar.dart';
import 'package:baby_hub/common/widgets/products/cart/add_remove_button.dart';
import 'package:baby_hub/common/widgets/products/cart/cart_item.dart';
import 'package:baby_hub/common/widgets/products/product_cards/product_price_text.dart';
import 'package:baby_hub/localization/naira_symbol.dart';
import 'package:baby_hub/utils/constants/sizes.dart';
//import 'package:baby_hub/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          "Cart",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (_, __) =>
              const SizedBox(height: TSizes.spaceBtwSections),
          itemCount: 4,
          itemBuilder: (_, index) => Column(
            children: [
              const CartItemWidget(),
              const SizedBox(height: TSizes.spaceBtwItems),
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
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: TSizes.defaultSpace,
          vertical: TSizes.defaultSpace * 2,
        ),
        child: ElevatedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Checkout"),
              const SizedBox(width: TSizes.spaceBtwItems / 2),
              ProductPriceText(
                price: "49,400",
                currency: getNaira(),
                isCheckout: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
