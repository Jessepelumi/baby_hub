import 'package:baby_hub/common/widgets/appbar/appbar.dart';
import 'package:baby_hub/common/widgets/custom/curved_edges/curved_edges_widget.dart';
import 'package:baby_hub/common/widgets/icons/heart_icon.dart';
import 'package:baby_hub/features/shop/screens/product/widgets/product_image_slider.dart';
import 'package:baby_hub/utils/constants/colors.dart';
import 'package:baby_hub/utils/constants/image_strings.dart';
import 'package:baby_hub/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductImageHeader extends StatelessWidget {
  const ProductImageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return CurvedEdgesWidget(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.white,
        child: Stack(
          children: [
            // Main image
            Image(image: AssetImage(TImageStrings.product_test)),

            // Image slider
            ProductImageSlider(),

            // Appbar icons
            CustomAppBar(
              showBackArrow: true,
              actions: [
                HeartIconWidget(
                  icon: Iconsax.heart5,
                  color: TColors.error,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
