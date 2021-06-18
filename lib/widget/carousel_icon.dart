import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prettify/widget/icons.dart';

class CarouselIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(


        color: Theme
            .of(context)
            .primaryColor,
        height: 250,
        child:CarouselSlider(

            options: CarouselOptions(

              height: 170.0,
              viewportFraction: 0.25,
              autoPlayCurve: Curves.bounceOut,
              enlargeCenterPage: true,
            ),
            items: [
              IconsBuild("assets/icons/boy-hair.png", "Cabelo Marculino"),
              IconsBuild("assets/icons/cabelo-feminino", "Cabelo Feminino"),
              IconsBuild("assets/icons/manicure", "Manicure"),
              IconsBuild("assets/icons/sobrancelhas", "Sobrancelhas"),
              IconsBuild("assets/icons/spa", "Spa"),
              IconsBuild("assets/icons/massagem", "Massagem"),
              IconsBuild("assets/icons/pet", "Pet"),


            ]
        ));
  }
}
