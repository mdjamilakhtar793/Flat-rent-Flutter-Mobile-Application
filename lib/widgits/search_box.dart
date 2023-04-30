import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: TextField(
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(9)),
            hintText: "Search here............",
            hintStyle: TextStyle(color: Colors.black12, fontSize: 20),
            prefixIcon: Container(
              padding: EdgeInsets.all(16),
              child: SvgPicture.asset(
                'assets/images/searches.svg',
              ),
            ),
            contentPadding: EdgeInsets.all(2)),
      ),
    );
  }
}
