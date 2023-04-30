import 'package:flaterent/widgits/c_app_bar.dart';
import 'package:flaterent/widgits/catogerise.dart';
import 'package:flaterent/widgits/customesnav.dart';
import 'package:flaterent/widgits/offers_best.dart';
import 'package:flaterent/widgits/rec_houses.dart';
import 'package:flaterent/widgits/search_box.dart';
import 'package:flaterent/widgits/wc.dart';
import 'package:flutter/material.dart';

class Homes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: CustomAppbar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeTexts(),
            SearchBox(),
            CategorisePage(),
            RecHouses(),
            OffersBest()
          ],
        ),
      ),
      bottomNavigationBar: CustomesNav(),
    );
  }
}
