import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prettify/widget/campo_busca.dart';
import 'package:prettify/widget/icon_full.dart';
import 'package:prettify/widget/icons.dart';



class CarouselIcon extends StatefulWidget {
  @override
  _CarouselIconState createState() => _CarouselIconState();

}

class _CarouselIconState extends State<CarouselIcon> {
  @override

  @override

  Widget build(BuildContext context) {

    return  Stack(
      children: [

        Container(
          alignment: Alignment.topCenter,

          height: 230,
          decoration: BoxDecoration(
            color: Theme
                .of(context)
                .primaryColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36.0),
                bottomRight: Radius.circular(36.0)
            ),
          ),
          child: CarouselSlider(

              options: CarouselOptions(

                height: 170.0,
                viewportFraction: 0.25,
                autoPlayCurve: Curves.bounceOut,
                enlargeCenterPage:true


              ),
              items: [

                IconsBuild("assets/icons/boy-hair.png", "Cabelo Marculino"),
                IconsBuild("assets/icons/cabelo-feminino.png", "Cabelo Feminino"),
                IconsBuild("assets/icons/manicure.png", "Manicure"),
                IconsBuild("assets/icons/sobrancelhas.png", "Sobrancelhas"),
                IconsBuild("assets/icons/spa.png", "Spa"),
                IconsBuild("assets/icons/massagem.png", "Massagem"),
                IconsBuild("assets/icons/pet.png", "Pet"),

              ]
          ),

        ),

      ],

    );
  }
}
