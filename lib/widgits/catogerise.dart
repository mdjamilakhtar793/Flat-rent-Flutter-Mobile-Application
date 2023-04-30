import 'package:flutter/material.dart';

class CategorisePage extends StatefulWidget {
  @override
  State<CategorisePage> createState() => _CategorisePageState();
}

class _CategorisePageState extends State<CategorisePage> {
  int currenSelection = 0;

  @override
  Widget build(BuildContext context) {
    final ctList = [
      'Top Recomodation',
      'Near You',
      'Agency Recomndation',
      'Most Popular',
      'Propert Location'
    ];
    return Container(
      height: 35,
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 22),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    currenSelection = index;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: currenSelection == index
                                  ? Theme.of(context).primaryColor
                                  : Colors.transparent,
                              width: 2))),
                  child: Text(
                    ctList[index],
                    style: TextStyle(
                        color: currenSelection == index
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).textTheme.bodyText1!.color,
                        fontSize: currenSelection == index ? 16 : 14,
                        fontWeight: currenSelection == index
                            ? FontWeight.bold
                            : FontWeight.normal),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 14,
              ),
          itemCount: ctList.length),
    );
  }
}
