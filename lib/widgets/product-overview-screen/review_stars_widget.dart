import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StarReviewWidget extends StatelessWidget {
  final double review;

  StarReviewWidget({required this.review});

  @override
  Widget build(BuildContext context) {
    int intPart = review.floor();
    double floatPart = review - intPart;
    floatPart -= 0.05;

    Color starColor = Color(0xFFFF981F);

    return Row(
      children: List.generate(5, (index) {
        if (index < intPart) {
          // Full star for integer part
          return SvgPicture.asset(
            'assets/icons/full-star.svg', // Replace with your full star SVG path
          );
        } else if (index == intPart && floatPart > 0.0) {
          // Partial star for float part
          return Stack(
            children: [
              SvgPicture.asset(
                'assets/icons/empty-star.svg', // Replace with your full star SVG path
              ),
              ClipRect(
                clipper: FractionalClipper(floatPart),
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    starColor,
                    BlendMode.srcIn,
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/full-star.svg', // Replace with your full star SVG path
                  ),
                ),
              ),
            ],
          );
        } else {
          // Empty star for the rest
          return SvgPicture.asset(
            'assets/icons/empty-star.svg', // Replace with your empty star SVG path
          );
        }
      }),
    );
  }
}

class FractionalClipper extends CustomClipper<Rect> {
  final double fraction;

  FractionalClipper(this.fraction);

  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, size.width * fraction, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return true;
  }
}
