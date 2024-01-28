import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartProductCard extends StatelessWidget {
  final double height;
  final double width;

  const CartProductCard({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    double getHeight(double height) {
      return screenHeight * height / 812.0;
    }

    double getWidth(double width) {
      return screenWidth * width / 375.0;
    }

    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xFFFEFEFE),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: getWidth(10),
                top: getHeight(10),
              ),
              child: SizedBox(
                width: getWidth(100),
                height: getHeight(100),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(9),
                  child: Image.network(
                    'https://images.pexels.com/photos/8217419/pexels-photo-8217419.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getHeight(12),
                left: getWidth(15),
              ),
              child: Container(
                width: getWidth(137),
                height: getHeight(105),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Men\'s Tie-Dye T-Shirt Nike Sportswear',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: Color(0xFF1D1E20),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: getHeight(10),
                      ),
                      child: const Text(
                        'LE 750',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: Color(0xFF8F959E),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: getHeight(14)),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  getHeight(25),
                                ),
                                border: Border.all(
                                  color: const Color(0xFFDEDEDE),
                                )),
                            height: getHeight(25),
                            width: getWidth(25),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(25),
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/icons/arrow-down.svg',
                                  color: const Color(0xFF8F959E),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getWidth(15),
                            ),
                            child: const Text(
                              '1',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                                fontFamily: 'Inter',
                                color: Color(0xFF1D1E20),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getWidth(15),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    getHeight(25),
                                  ),
                                  border: Border.all(
                                    color: const Color(0xFFDEDEDE),
                                  )),
                              height: getHeight(25),
                              width: getWidth(25),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(25),
                                child: Center(
                                  child: SvgPicture.asset(
                                    'assets/icons/arrow-up.svg',
                                    color: const Color(0xFF8F959E),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getWidth(38),
                top: getHeight(93),
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      getHeight(25),
                    ),
                    border: Border.all(
                      color: const Color(0xFFDEDEDE),
                    )),
                height: getHeight(25),
                width: getWidth(25),
                child: InkWell(
                  borderRadius: BorderRadius.circular(25),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/trash.svg',
                      color: const Color(0xFF8F959E),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
