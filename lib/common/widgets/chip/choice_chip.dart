import 'package:baby_hub/common/widgets/custom/container/circular_container.dart';
import 'package:baby_hub/utils/constants/colors.dart';
import 'package:baby_hub/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CustomChoiceChip extends StatelessWidget {
  const CustomChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunctions.getColor(text);

    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor != null ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? TColors.white : null),
        avatar: isColor != null
            ? CicularContainer(
                width: 50,
                height: 50,
                backgroundColor: THelperFunctions.getColor(text)!)
            : null,
        shape: isColor != null ? CircleBorder() : null,
        labelPadding: isColor != null ? EdgeInsets.all(0) : null,
        padding: isColor != null ? EdgeInsets.all(0) : null,
        //selectedColor: Colors.green,
        backgroundColor:
            isColor != null ? THelperFunctions.getColor(text)! : null,
      ),
    );
  }
}
