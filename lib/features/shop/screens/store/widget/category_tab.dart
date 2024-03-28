import 'package:baby_hub/common/widgets/brands/brand_showcase.dart';
import 'package:baby_hub/common/widgets/layout/grid_layout.dart';
import 'package:baby_hub/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:baby_hub/common/widgets/texts/section_heading.dart';
import 'package:baby_hub/utils/constants/image_strings.dart';
import 'package:baby_hub/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Brands
              BrandShowcase(
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
                itemBuilder: (_, index) => ProductCardVertical(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
