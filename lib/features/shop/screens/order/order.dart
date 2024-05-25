import 'package:baby_hub/common/widgets/appbar/appbar.dart';
import 'package:baby_hub/features/shop/screens/order/widgets/order_list.dart';
import 'package:baby_hub/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          "My Orders",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: OrderList(),
      ),
    );
  }
}
