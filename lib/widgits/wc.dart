import 'package:flutter/material.dart';

class WelcomeTexts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 21, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hello Jamil Akhtar",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 15, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 12,
          ),
          Text("We Are Finding Good Home And Good Place",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 15, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
