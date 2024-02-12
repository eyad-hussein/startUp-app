import 'package:app/models/product_model.dart';
import 'package:app/shared/ui/ui_helpers.dart';
import 'package:app/widgets/product/product-overview-screen/product_description/description_box/description_box_widget.dart';
import 'package:app/widgets/product/product-overview-screen/product_description/sub_images/list_view_builder_subimages_widget.dart';
import 'package:app/widgets/product/product-overview-screen/product_description/product_description_header_widget.dart';
import 'package:app/widgets/product/product-overview-screen/product_description/product_image_widget.dart';
import 'package:app/widgets/product/product-overview-screen/product_description/product_sizes/product_sizes_widget.dart';
import 'package:app/widgets/product/product-overview-screen/product_description/reviews/reviews_widget.dart';
import 'package:app/widgets/shared/extended_appbar_widget.dart';
import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  final ProductModel product;
  final double Function(double) getHeight;
  final double Function(double) getWidth;
  const ProductDescription({
    super.key,
    required this.product,
    required this.getHeight,
    required this.getWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ProductImage(
              image: product.image.url,
              height: getHeight(387),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getHeight(45),
                left: getWidth(20),
                right: getWidth(20),
              ),
              child: const ExtendedAppbar(
                type: ExtendedAppbarType.product,
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.all(getHeight(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductDescriptionHeader(
                product: product,
                getHeight: getHeight,
                getWidth: getWidth,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: verticalSpaceSmall),
                child: SizedBox(
                  height: getHeight(77),
                  width: getWidth(335),
                  child: ListViewSubImages(
                    subImages: product.subImages,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: verticalSpaceRegular),
                child: ProductSizes(
                  sizesAvailable: product.sizesAvailable,
                  getHeight: getHeight,
                  getWidth: getWidth,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: verticalSpaceRegular),
                child: DescriptionBox(
                  description: product.description,
                  getHeight: getHeight,
                  getWidth: getWidth,
                ),
              ),
              Reviews(
                reviews: product.reviews,
                getHeight: getHeight,
                getWidth: getWidth,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
