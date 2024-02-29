import 'package:flutter/material.dart';

class DescriptionBoxContent extends StatefulWidget {
  final String description;

  const DescriptionBoxContent({super.key, required this.description});

  @override
  State<DescriptionBoxContent> createState() => _DescriptionBoxContentState();
}

class _DescriptionBoxContentState extends State<DescriptionBoxContent> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    String truncatedDescription = widget.description;

    if (widget.description.length > 111 && !isExpanded) {
      truncatedDescription = '${widget.description.substring(0, 45)}...';
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          truncatedDescription,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Color(0xFF8F959E),
            fontFamily: 'Inter',
          ),
        ),
        if (widget.description.length > 45)
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Text(
              isExpanded ? 'Read less' : 'Read more',
              style: const TextStyle(
                color: Color(0xFF1D1E20), // Customize the color as needed
                fontWeight: FontWeight.w600,
                fontSize: 15,
                fontFamily: 'Inter',
              ),
            ),
          ),
      ],
    );
  }
}
