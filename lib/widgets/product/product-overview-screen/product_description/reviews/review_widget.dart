import 'package:app/models/review_model.dart';
import 'package:app/widgets/product/product-overview-screen/product_description/product_description_text_widget.dart';
import 'package:app/widgets/product/product-overview-screen/product_description/reviews/review_stars_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Review extends StatelessWidget {
  final ReviewModel review;
  final double Function(double) getHeight;
  final double Function(double) getWidth;
  const Review(
      {super.key,
      required this.review,
      required this.getHeight,
      required this.getWidth});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: getHeight(15),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: getHeight(45),
                height: getHeight(45),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFCCD9E0),
                ),
                //Add Image for the rev photo here
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: getWidth(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            review.user.name,
                            style: const TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Color(0xFF1D1E20),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: getHeight(5),
                            ),
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/icons/clock.svg'),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getWidth(5),
                                  ),
                                  //here should be the date text
                                  child: const Text(
                                    // add created date here
                                    "13 Sep, 2020",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                      color: Color(0xFF8F959E),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              review.rating.toString(),
                              style: const TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Color(0xFF1D1E20),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: getWidth(5),
                              ),
                              child: const Text(
                                "Rating",
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11,
                                  color: Color(0xFF8F959E),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getHeight(5),
                          ),
                          child: StarReviewWidget(review: review.rating),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: getHeight(10),
            right: getWidth(20),
          ),
          //Should be renamed CustomDescription we 5alas
          child: const DescriptionBoxContent(
            description:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae asdas asd asd  amdet...",
          ),
        ),
      ],
    );
  }
}
