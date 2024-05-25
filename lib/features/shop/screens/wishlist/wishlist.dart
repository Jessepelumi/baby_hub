import 'package:paalii/common/widgets/appbar/appbar.dart';
import 'package:paalii/common/widgets/icons/heart_icon.dart';
import 'package:paalii/common/widgets/layout/grid_layout.dart';
import 'package:paalii/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:paalii/features/shop/screens/home/home.dart';
import 'package:paalii/utils/constants/colors.dart';
import 'package:paalii/utils/constants/sizes.dart';
import 'package:paalii/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Wishlist",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          HeartIconWidget(
            icon: Iconsax.add,
            onPressed: () => Get.to(const HomeScreen()),
            color: THelperFunctions.isDarkMode(context)
                ? TColors.white
                : TColors.dark,
            backgroundColor: THelperFunctions.isDarkMode(context)
                ? TColors.white.withOpacity(0.2)
                : TColors.black.withOpacity(0.2),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              GridLayoutWIdget(
                itemCount: 6,
                itemBuilder: (_, index) => const ProductCardVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
