import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/custom_shape/containers/circular_container.dart';
import 'package:flutter_application_1/utils/helpers/helper_function.dart';

class TChoisChip extends StatelessWidget {
  const TChoisChip(
      {Key? key, required this.text, required this.selected, this.onSelected})
      : super(key: key);

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunctions.getColor(text) != null;
    return ChoiceChip(
      label: isColor ? const SizedBox() : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: true ? Colors.black : null),
      avatar: isColor
          ? TCircularContainer(
              width: 50,
              height: 50,
              backgroundColor: THelperFunctions.getColor(text)!)
          : null,
      shape: isColor ? const CircleBorder() : null,
      labelPadding: THelperFunctions.getColor(text) != null
          ? const EdgeInsets.all(0)
          : null,
      padding: isColor ? const EdgeInsets.all(0) : null,
      backgroundColor: isColor ? THelperFunctions.getColor(text) : null,
    );
  }
}
