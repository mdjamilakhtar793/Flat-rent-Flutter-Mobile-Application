import 'package:flaterent/models/h_model.dart';
import 'package:flutter/material.dart';

class PropertyIntro extends StatelessWidget {
  final Models models;
  const PropertyIntro({super.key, required this.models});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              Text(models.name),
              Text(models.address),
              Text("45000-sqr-ft"),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "\$4250",
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontSize: 17, fontWeight: FontWeight.bold)),
                TextSpan(
                    text: 'Per Month',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 15))
              ]))
            ],
          ),
        ],
      ),
    );
  }
}
