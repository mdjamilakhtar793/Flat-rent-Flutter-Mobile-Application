import 'package:flaterent/models/h_model.dart';
import 'package:flutter/material.dart';

class InfoAppBar extends StatelessWidget {
  final Models models;
  const InfoAppBar({super.key, required this.models});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Stack(
        children: [
          Image.asset(
            models.imageUrl,
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 18,
                    width: 18,
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: Colors.yellow, shape: BoxShape.circle),
                    child: Image.asset('assets/images/pi.png'),
                  ),
                ),
                Container(
                  height: 18,
                  width: 18,
                  padding: EdgeInsets.all(6),
                  decoration:
                      BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                  child: Image.asset('assets/images/pi.png'),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
