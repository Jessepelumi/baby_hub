import 'package:baby_hub/common/widgets/image_text/vertical_image_text.dart';
import 'package:baby_hub/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

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
            onTap: () {},
          );
        },
      ),
    );
  }
}
