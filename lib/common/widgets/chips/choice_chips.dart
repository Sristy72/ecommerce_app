import 'package:ecommerce_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TChoiceChips extends StatelessWidget {
  const TChoiceChips({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final bool selected;
  final String text;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunction.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        //selectedColor: isColor? THelperFunction.getColor(text):null,
        labelStyle: TextStyle(color: selected ? TColors.white : null),
        shape: isColor ? CircleBorder() : null,
        backgroundColor: isColor ? THelperFunction.getColor(text) : null,
        labelPadding: isColor ? EdgeInsets.all(0) : null,
        padding: isColor ? EdgeInsets.all(0) : null,
        avatar:
            isColor
                ? TCircularContainer(
                  width: 50,
                  height: 50,
                  backgroundColor: THelperFunction.getColor(text)!,
                )
                : null,
      ),
    );
  }
}
