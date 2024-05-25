import 'package:baby_hub/common/widgets/custom/container/primary_header_container.dart';
import 'package:baby_hub/common/widgets/custom/container/search_container.dart';
import 'package:baby_hub/common/widgets/layout/grid_layout.dart';
import 'package:baby_hub/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:baby_hub/common/widgets/texts/section_heading.dart';
import 'package:baby_hub/features/shop/screens/all_products/all_products.dart';
import 'package:baby_hub/features/shop/screens/home/widgets/banner_slider.dart';
import 'package:baby_hub/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:baby_hub/features/shop/screens/home/widgets/home_categories.dart';
import 'package:baby_hub/utils/constants/colors.dart';
import 'package:baby_hub/utils/constants/image_strings.dart';
import 'package:baby_hub/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            const PrimaryHeaderContainer(
              child: Column(
                children: [
                  // Appbar
                  HomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // Searchbar
                  Searchbar(text: "Search shop"),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        // Heading
                        SectionHeading(
                          title: "Popular Categories",
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),

                        // Scrollable Categories
                        HomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            // Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // Sliding banners
                  const BannerSlider(
                    banners: [
                      TImageStrings.test,
                      TImageStrings.test,
                      TImageStrings.test,
                      TImageStrings.test,
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Heading
                  SectionHeading(
                    title: "Popular Products",
                    onPressed: () => Get.to(() => const AllProducts()),
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  // Popular products
                  GridLayoutWIdget(
                    itemCount: 4,
                    itemBuilder: (_, index) => const ProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
