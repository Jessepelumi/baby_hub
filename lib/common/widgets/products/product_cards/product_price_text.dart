import 'package:baby_hub/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ProductPriceText extends StatelessWidget {
  const ProductPriceText({
    super.key,
    this.currency = "",
    required this.price,
    this.maxLines = 1,
    this.isLarge = false,
    this.lineThrough = false,
    this.isCheckout = false,
  });

  final String currency, price;
  final int maxLines;
  final bool isLarge;
  final bool isCheckout;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currency + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isCheckout
          ? Theme.of(context).textTheme.titleLarge!.apply(color: TColors.white)
          : isLarge
              ? Theme.of(context).textTheme.headlineMedium!.apply(
                  decoration: lineThrough ? TextDecoration.lineThrough : null)
              : Theme.of(context).textTheme.titleLarge!.apply(
                  decoration: lineThrough ? TextDecoration.lineThrough : null),
    );
  }
}
