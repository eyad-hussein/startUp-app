import 'package:app/models/sub_image_model.dart';
import 'package:flutter/material.dart';
import 'subimage_card_widget.dart';

class ListViewSubImages extends StatelessWidget {
  final List<SubImageModel> subImages;
  const ListViewSubImages({
    super.key,
    required this.subImages,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: subImages.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(
              left:
                  index == 0 ? 0 : MediaQuery.of(context).size.width * 9 / 375),
          child: SubImageCard(
            ImageURL: subImages[index].url,
          ),
        );
      },
    );
  }
}
