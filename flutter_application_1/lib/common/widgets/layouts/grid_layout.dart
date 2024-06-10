import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/utils/constants/size.dart';

class TGridLayout extends StatelessWidget {
  const TGridLayout({
    Key? key,
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisExtent = 288,
  }) : super(key: key);

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: mainAxisExtent,
          mainAxisSpacing: TSize.gridViweSpacing,
          crossAxisSpacing: TSize.gridViweSpacing,
        ),
        itemBuilder: itemBuilder);
  }
}
