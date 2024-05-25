import 'package:paalii/common/widgets/image_text/vertical_image_text.dart';
import 'package:paalii/features/shop/screens/sub_categories/sub_categories.dart';
import 'package:paalii/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return VerticalImageText(
            image: TImageStrings.test,
            title: "Test",
            onTap: () => Get.to(() => const SubCategories()),
          );
        },
      ),
    );
  }
}
