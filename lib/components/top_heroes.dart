import 'package:flutter/material.dart';
import 'package:submission_dicoding_flutter/data/hero/data_hero.dart';
import 'package:submission_dicoding_flutter/screens/details_screens.dart';

class TopHeroes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        9,
        (index) => GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailsScreens(hero: listHero[index]);
            }));
          },
          child: Container(
            height: 115,
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
                color: listHero[index].warna.withOpacity(.8),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                ClipRRect(
                  child: Image.asset(listHero[index].imageAssets),
                  borderRadius: BorderRadius.circular(10),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          listHero[index].name,
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                              fontWeight: FontWeight.w800),
                        ),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: 'Description',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black54)),
                            TextSpan(
                                text: " : ",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black54)),
                            TextSpan(
                                text: listHero[index].description.substring(0, 30) + " load more ...",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black54)),
                            ]),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
