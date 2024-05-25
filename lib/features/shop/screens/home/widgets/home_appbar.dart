import 'package:paalii/common/widgets/appbar/appbar.dart';
import 'package:paalii/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:paalii/utils/constants/colors.dart';
import 'package:paalii/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTextStrings.homeAppBarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: TColors.grey),
          ),
          Text(
            TTextStrings.homeAppBarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: TColors.white),
          ),
        ],
      ),
      actions: const [
        CounterIcon(
          iconColor: TColors.white,
        ),
      ],
    );
  }
}
