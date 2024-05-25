import 'package:paalii/common/widgets/brands/brand_showcase.dart';
import 'package:paalii/common/widgets/layout/grid_layout.dart';
import 'package:paalii/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:paalii/common/widgets/texts/section_heading.dart';
import 'package:paalii/utils/constants/image_strings.dart';
import 'package:paalii/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Brands
              const BrandShowcase(
                images: [
                  TImageStrings.product_test,
                  TImageStrings.product_test,
                  TImageStrings.product_test,
                ],
              ),
              // BrandShowcase(
              //   images: [
              //     TImageStrings.product_test,
              //     TImageStrings.product_test,
              //     TImageStrings.product_test,
              //   ],
              // ),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Products
              SectionHeading(
                title: "You might like",
                onPressed: () {},
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Grid layout for products
              GridLayoutWIdget(
                itemCount: 4,
                itemBuilder: (_, index) => const ProductCardVertical(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
