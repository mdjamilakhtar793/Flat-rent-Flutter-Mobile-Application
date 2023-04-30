import 'package:flaterent/models/h_model.dart';
import 'package:flaterent/widgits/infoappbar.dart';
import 'package:flaterent/widgits/property_intro.dart';
import 'package:flutter/material.dart';

class Informations extends StatelessWidget {
  final Models models;
  const Informations({super.key, required this.models});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            InfoAppBar(models: models),
            SizedBox(
              height: 20,
            ),
            PropertyIntro(models: models)
          ],
        ),
      ),
    );
  }
}
