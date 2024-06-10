import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/common/widgets/image_text_widgets/verticalImage.dart';
import 'package:flutter_application_1/utils/constants/image_string.dart';

class THomeCategoris extends StatelessWidget {
  const THomeCategoris({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImage(
            image: TImages.katagori1,
            title: 'Laptop',
            onTap: () {},
          );
        },
      ),
    );
  }
}
