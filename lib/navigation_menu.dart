import 'package:paalii/features/personalization/screens/settings/settings.dart';
import 'package:paalii/features/shop/screens/home/home.dart';
import 'package:paalii/features/shop/screens/store/store.dart';
import 'package:paalii/features/shop/screens/wishlist/wishlist.dart';
import 'package:paalii/utils/constants/colors.dart';
import 'package:paalii/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: darkMode ? TColors.black : TColors.white,
          indicatorColor: Colors.transparent,
          destinations: [
            NavigationBarTheme(
              data: NavigationBarThemeData(
                labelTextStyle: MaterialStateProperty.resolveWith(
                    (states) => states.contains(MaterialState.selected)
                        ? const TextStyle(color: TColors.primary)
                        : darkMode
                            ? const TextStyle(color: TColors.white)
                            : const TextStyle(color: TColors.dark)),
              ),
              child: const NavigationDestination(
                icon: Icon(Iconsax.home_24),
                label: "Home",
                selectedIcon: Icon(
                  Iconsax.home_25,
                  color: TColors.primary,
                ),
              ),
            ),
            NavigationBarTheme(
              data: NavigationBarThemeData(
                labelTextStyle: MaterialStateProperty.resolveWith(
                    (states) => states.contains(MaterialState.selected)
                        ? const TextStyle(color: TColors.primary)
                        : darkMode
                            ? const TextStyle(color: TColors.white)
                            : const TextStyle(color: TColors.dark)),
              ),
              child: const NavigationDestination(
                icon: Icon(Iconsax.shop4),
                label: "Store",
                selectedIcon: Icon(
                  Iconsax.shop5,
                  color: TColors.primary,
                ),
              ),
            ),
            NavigationBarTheme(
              data: NavigationBarThemeData(
                labelTextStyle: MaterialStateProperty.resolveWith(
                    (states) => states.contains(MaterialState.selected)
                        ? const TextStyle(color: TColors.primary)
                        : darkMode
                            ? const TextStyle(color: TColors.white)
                            : const TextStyle(color: TColors.dark)),
              ),
              child: const NavigationDestination(
                icon: Icon(Iconsax.heart4),
                label: "Wishlist",
                selectedIcon: Icon(
                  Iconsax.heart5,
                  color: TColors.primary,
                ),
              ),
            ),
            NavigationBarTheme(
              data: NavigationBarThemeData(
                labelTextStyle: MaterialStateProperty.resolveWith(
                    (states) => states.contains(MaterialState.selected)
                        ? const TextStyle(color: TColors.primary)
                        : darkMode
                            ? const TextStyle(color: TColors.white)
                            : const TextStyle(color: TColors.dark)),
              ),
              child: const NavigationDestination(
                icon: Icon(Iconsax.profile_tick4),
                label: "Profile",
                selectedIcon: Icon(
                  Iconsax.profile_tick5,
                  color: TColors.primary,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Obx(
        () => controller.screens[controller.selectedIndex.value],
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const WishlistScreen(),
    const SettingsScreen(),
  ];
}
