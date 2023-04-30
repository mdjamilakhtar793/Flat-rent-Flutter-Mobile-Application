import 'package:flutter/material.dart';

class CustomesNav extends StatelessWidget {
  final bottomApp = ['home', 'searching', 'bell', 'shoping', 'like'];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      margin: EdgeInsets.only(bottom: 23),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(29),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 8,
                offset: Offset(0, 2))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: bottomApp
            .map((e) => Image.asset(
                  'assets/images/$e.png',
                  color: Theme.of(context).primaryColor,
                ))
            .toList(),
      ),
    );
  }
}
