import 'package:baby_hub/common/widgets/appbar/appbar.dart';
import 'package:baby_hub/common/widgets/brands/brand_card.dart';
import 'package:baby_hub/common/widgets/products/sortable/sorted_products.dart';
import 'package:baby_hub/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Nike",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Brand details
              BrandCard(showBorder: true),
              SizedBox(height: TSizes.spaceBtwSections),

              // Products
              SortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
