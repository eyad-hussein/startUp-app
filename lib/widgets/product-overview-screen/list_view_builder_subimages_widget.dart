import 'package:flutter/material.dart';
import '../../models/brand.dart';
import 'subimage_card_widget.dart';

class ListViewSubImages extends StatelessWidget {
  final List<String> SubImagesUrl;
  const ListViewSubImages({
    super.key,
    required this.SubImagesUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: SubImagesUrl.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(left: index == 0 ? 0 : MediaQuery.of(context).size.width * 9/375),
          child: SubImageCard(
            ImageURL: SubImagesUrl[index],
          ),
        );
      },
    );
  }
}
