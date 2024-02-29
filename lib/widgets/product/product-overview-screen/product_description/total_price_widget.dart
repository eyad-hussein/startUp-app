import 'package:flutter/material.dart';

class TotalPrice extends StatelessWidget {
  final double Function(double) getHeight;
  final double Function(double) getWidth;
  const TotalPrice(
      {super.key, required this.getHeight, required this.getWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(
        top: getHeight(15),
      ),
      child: SizedBox(
        height: getHeight(39),
        width: getWidth(335),
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Price",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Color(0xFF1D1E20),
                  ),
                ),
                Text(
                  "with VAT,SD",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                    color: Color(0xFF8F959E),
                  ),
                )
              ],
            ),
            Text(
              "125\$",
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                fontSize: 17,
                color: Color(0xFF1D1E20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
