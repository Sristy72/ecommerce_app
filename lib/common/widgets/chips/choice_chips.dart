import 'package:ecommerce_app/utils/constants/colors.dart';
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
    return ChoiceChip(
      label: Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? TColors.white : null),
    );
  }
}
