import 'package:baby_hub/common/widgets/appbar/appbar.dart';
import 'package:baby_hub/common/widgets/icons/heart_icon.dart';
import 'package:baby_hub/common/widgets/layout/grid_layout.dart';
import 'package:baby_hub/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:baby_hub/features/shop/screens/home/home.dart';
import 'package:baby_hub/utils/constants/colors.dart';
import 'package:baby_hub/utils/constants/sizes.dart';
import 'package:baby_hub/utils/helpers/helper_functions.dart';
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
            onPressed: () => Get.to(HomeScreen()),
            color: THelperFunctions.isDarkMode(context)
                ? TColors.white
                : TColors.dark,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              GridLayoutWIdget(
                itemCount: 6,
                itemBuilder: (_, index) => ProductCardVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
