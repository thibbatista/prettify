import 'package:flutter/material.dart';
import 'package:prettify/widget/campo_busca.dart';
import 'package:prettify/widget/card_carousel.dart';
import 'package:prettify/widget/carousel_icon.dart';
import 'package:prettify/widget/icon_full.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:ListView(
        children: [
         // CarouselIcon(),
         Container(
           height: 250,
           child: Stack(
             children: [
               CarouselIcon(),
               Positioned(
                 left: 0,
                   right: 0,
                   bottom: 0,
                   child: CampoBusca()),

             ],
           ),
         ),
          CardCarousel(),
          CardCarousel(),
            ],
          )

      );

  }
}
