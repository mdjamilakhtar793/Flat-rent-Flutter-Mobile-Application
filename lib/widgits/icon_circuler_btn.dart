import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconBtn extends StatelessWidget {
  final String iconsUrl;
  final Color color;
  const IconBtn({super.key, required this.iconsUrl, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(iconsUrl),
    );
  }
}
