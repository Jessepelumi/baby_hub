import 'package:baby_hub/common/widgets/appbar/appbar.dart';
import 'package:baby_hub/common/widgets/appbar/tabbar.dart';
import 'package:baby_hub/common/widgets/custom/container/search_container.dart';
import 'package:baby_hub/common/widgets/layout/grid_layout.dart';
import 'package:baby_hub/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:baby_hub/common/widgets/texts/section_heading.dart';
import 'package:baby_hub/common/widgets/brands/brand_card.dart';
import 'package:baby_hub/features/shop/screens/store/widget/category_tab.dart';
import 'package:baby_hub/utils/constants/colors.dart';
import 'package:baby_hub/utils/constants/sizes.dart';
import 'package:baby_hub/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

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
              onPressed: () {},
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
                  padding: EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      SizedBox(height: TSizes.spaceBtwItems),
                      Searchbar(
                        text: "Search in Store",
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      SizedBox(height: TSizes.spaceBtwSections),

                      // Featured brands
                      SectionHeading(
                        title: "Featured Brands",
                        onPressed: () {},
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                      // Brands grid
                      GridLayoutWIdget(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return BrandCard(showBorder: true);
                        },
                      ),
                    ],
                  ),
                ),

                // Tab bar
                bottom: CustomTabBar(
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
          body: TabBarView(
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
