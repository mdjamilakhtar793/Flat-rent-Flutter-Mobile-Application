import 'package:flaterent/models/h_model.dart';
import 'package:flaterent/widgits/icon_circuler_btn.dart';
import 'package:flutter/material.dart';

class OffersBest extends StatelessWidget {
  final liOffers = Models.genrateGoodOffers();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 19),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Good Offers",
                style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text("See Latest Offers",
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54)),
            ],
          ),
          SizedBox(height: 11),
          ...liOffers
              .map((e) => Container(
                    margin: EdgeInsets.only(bottom: 9),
                    padding: EdgeInsets.all(9),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(9)),
                    child: Stack(children: [
                      Row(
                        children: [
                          Container(
                            width: 155,
                            height: 85,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(e.imageUrl),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          SizedBox(
                            width: 11,
                          ),
                          Column(
                            children: [
                              Text(
                                e.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Text(e.address,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold)),
                            ],
                          )
                        ],
                      ),
                      Positioned(
                          right: 0,
                          child: IconBtn(
                            iconsUrl: 'assets/images/hearts.svg',
                            color: Colors.white,
                          ))
                    ]),
                  ))
              .toList()
        ],
      ),
    );
  }
}
