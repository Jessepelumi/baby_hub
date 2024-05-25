import 'package:paalii/common/widgets/appbar/appbar.dart';
import 'package:paalii/common/widgets/appbar/tabbar.dart';
import 'package:paalii/common/widgets/custom/container/search_container.dart';
import 'package:paalii/common/widgets/layout/grid_layout.dart';
import 'package:paalii/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:paalii/common/widgets/texts/section_heading.dart';
import 'package:paalii/common/widgets/brands/brand_card.dart';
import 'package:paalii/features/shop/screens/brands/all_brands.dart';
import 'package:paalii/features/shop/screens/store/widget/category_tab.dart';
import 'package:paalii/utils/constants/colors.dart';
import 'package:paalii/utils/constants/sizes.dart';
import 'package:paalii/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CustomAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            CounterIcon(
              iconColor: THelperFunctions.isDarkMode(context)
                  ? TColors.white
                  : TColors.dark,
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,

                // Output widgets
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: TSizes.spaceBtwItems),
                      const Searchbar(
                        text: "Search in Store",
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections),

                      // Featured brands
                      SectionHeading(
                        title: "Featured Brands",
                        onPressed: () => Get.to(() => const AllBrandsScreen()),
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                      // Brands grid
                      GridLayoutWIdget(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return const BrandCard(showBorder: true);
                        },
                      ),
                    ],
                  ),
                ),

                // Tab bar
                bottom: const CustomTabBar(
                  tabs: [
                    Tab(child: Text("Fashion")),
                    Tab(child: Text("Sports")),
                    Tab(child: Text("Skin")),
                    Tab(child: Text("Health")),
                    Tab(child: Text("Toys")),
                  ],
                ),
              ),
            ];
          },

          // Body - Tabs
          body: const TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
