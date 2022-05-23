import 'package:flutter/material.dart';
import 'package:submission_dicoding_flutter/data/hero/data_hero_model.dart';

var informationTextStyle = TextStyle(fontFamily: 'Oxygen', fontSize: 13);

class DetailsScreens extends StatelessWidget {
  final HeroModel hero;

  const DetailsScreens({Key? key, required this.hero}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: hero.warna,
        body: Stack(children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              child: SafeArea(
                  child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(hero.imageAssets),
                  ),
                ),
              ))),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  FavoriteButton(),
                ],
              ),
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: DraggableScrollableSheet(
                  expand: true,
                  minChildSize: .7,
                  maxChildSize: .9,
                  initialChildSize: .7,
                  builder: (context, scrollController) {
                    return Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  offset: Offset(0, -4),
                                  color: Colors.blue[800]!.withOpacity(.2))
                            ],
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50))),
                        child: SingleChildScrollView(
                            child: Column(
                          children: [
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              "About " + hero.name,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              hero.description,
                              style: informationTextStyle,
                            ),
                          ],
                        )));
                  }))
        ]));
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
