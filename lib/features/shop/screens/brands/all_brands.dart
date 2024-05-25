import 'package:baby_hub/common/widgets/appbar/appbar.dart';
import 'package:baby_hub/common/widgets/brands/brand_card.dart';
import 'package:baby_hub/common/widgets/layout/grid_layout.dart';
import 'package:baby_hub/common/widgets/texts/section_heading.dart';
import 'package:baby_hub/features/shop/screens/brands/brand_products.dart';
import 'package:baby_hub/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Brand",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Heading
              const SectionHeading(
                title: "All Brands",
                showActionButton: false,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Brands
              GridLayoutWIdget(
                itemCount: 9,
                mainAxisExtent: 80,
                itemBuilder: (_, index) => BrandCard(
                  showBorder: true,
                  onTap: () => Get.to(() => const BrandProducts()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
