import 'package:flaterent/models/h_model.dart';
import 'package:flaterent/widgits/icon_circuler_btn.dart';
import 'package:flaterent/widgits/infoappbar.dart';
import 'package:flutter/material.dart';

class RecHouses extends StatelessWidget {
  final recLists = Models.genrateRecom();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      height: 330,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return InfoAppBar(models: recLists[index]);
                  }));
                },
                child: Container(
                    height: 300,
                    width: 200,
                    padding: EdgeInsets.all(9),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(9)),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(recLists[index].imageUrl),
                                  fit: BoxFit.cover)),
                        ),
                        Positioned(
                            right: 15,
                            top: 10,
                            child: IconBtn(
                              iconsUrl: 'assets/images/bkmarks.svg',
                              color: Theme.of(context).accentColor,
                            )),
                        Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              color: Colors.white54,
                              padding: EdgeInsets.all(9),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        recLists[index].name,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1!
                                            .copyWith(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      Text(
                                        recLists[index].address,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  IconBtn(
                                      iconsUrl: 'assets/images/bkmarks.svg',
                                      color: Theme.of(context).accentColor)
                                ],
                              ),
                            ))
                      ],
                    )),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 20,
              ),
          itemCount: recLists.length),
    );
  }
}
