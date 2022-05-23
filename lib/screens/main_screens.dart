import 'package:flutter/material.dart';
import 'package:submission_dicoding_flutter/components/custom_appbar.dart';
import 'package:submission_dicoding_flutter/components/header_title.dart';
import 'package:submission_dicoding_flutter/components/subtitle_text.dart';
import 'package:submission_dicoding_flutter/components/top_heroes.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            child: CustomAppBar(),
            preferredSize: Size(MediaQuery
                .of(context)
                .size
                .width, 60)),
        body: Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: MediaQuery
                .of(context)
                .size
                .height,
            decoration: BoxDecoration(color: Colors.white),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    HeaderTitle(),
                    SubtitleText(title: "Top Heroes"),
                    TopHeroes()
                  ]
              ),
            )
        )
    );
  }
}
