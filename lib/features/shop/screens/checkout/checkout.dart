import 'package:baby_hub/common/widgets/appbar/appbar.dart';
import 'package:baby_hub/common/widgets/products/cart/coupon_text_field.dart';
import 'package:baby_hub/common/widgets/products/product_cards/product_price_text.dart';
import 'package:baby_hub/common/widgets/success_screen/sucess_screen.dart';
import 'package:baby_hub/features/shop/screens/cart/widgets/cart_list_item.dart';
import 'package:baby_hub/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:baby_hub/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:baby_hub/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:baby_hub/localization/naira_symbol.dart';
import 'package:baby_hub/navigation_menu.dart';
import 'package:baby_hub/utils/constants/image_strings.dart';
import 'package:baby_hub/utils/constants/sizes.dart';
//import 'package:baby_hub/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          "Order Review",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Items in cart
              CartListItem(showQuantityButtons: false),
              SizedBox(height: TSizes.spaceBtwSections),

              // Coupon textfield
              CouponTextField(),
              SizedBox(height: TSizes.spaceBtwSections),

              // Billing section
              Padding(
                padding: const EdgeInsets.all(TSizes.md),
                child: Column(
                  children: [
                    // Divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    // Pricing
                    BillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    // Divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    // Payment methods
                    BillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    // Address
                    BillingAddressSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    // Divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems),
                  ],
                ),
              ),
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
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: TImageStrings.success,
              title: "Payment Success",
              subTitle:
                  "Your item(s) will be shipped soon! Thank you for choosing us.",
              onPressed: () => Get.offAll(
                () => const NavigationMenu(),
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Proceed to Pay"),
              const SizedBox(width: TSizes.spaceBtwItems / 2),
              ProductPriceText(
                price: "50,547",
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
