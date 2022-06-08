import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prettify/widget/card_estab.dart';

class CardCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30.0,),
        Container(
          padding: EdgeInsets.all(10.0),
          alignment: Alignment.centerLeft,
          height: 50.0,
          //color: Colors.red,
          child: Text("Mais Populares", style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
        ),
        Container(
          alignment: Alignment.center,
          height: 250.0,
          child: CarouselSlider(
              options: CarouselOptions(
                height: 250.0,
                viewportFraction: 0.7,
                autoPlayCurve: Curves.bounceOut,
                enlargeCenterPage: true,
              ),
              items: [
                CardEstab("assets/images/barbearia2.jpg"),
                CardEstab("assets/images/manicure.jpg"),
                CardEstab("assets/images/massagem2.jpg"),
                CardEstab("assets/images/massagista.jpg"),
                CardEstab("assets/images/salao (1).jpg"),
                CardEstab("assets/images/salao (1).jpeg"),
                CardEstab("assets/images/salao (1).png"),
                CardEstab("assets/images/salao (2).jpg"),


              ]),
        ),
      ],
    );
  }
}
