import 'package:flutter/material.dart';

class CardEstab extends StatelessWidget {
  final String image;

  CardEstab(this.image);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        debugPrint("pressionou o card");
      },
      child: Container(
          height: 180.0,
          decoration: BoxDecoration(color: Colors.white,
              // borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 20),
                  blurRadius: 50,
                  color: Theme.of(context).primaryColor.withOpacity(0.2),
                )
              ]),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  alignment: Alignment.topCenter,

                  height: 200,
                  //color: Colors.blue,
                  child:Stack(
                    children: [
                      Align(// colocar outro align e por outra imagem que será a do selo e falta  colocar as avaliacoes
                        alignment: Alignment.topCenter,
                        child: Image(
                          image: AssetImage(image),
                          fit: BoxFit.fill,
                          width: 300.0,
                          height: 190.0,
                        ),
                      ),
                      Align(// colocar outro align e por outra imagem que será a do selo e falta  colocar as avaliacoes
                        alignment: Alignment.topRight,
                        child: Image(
                          image: AssetImage("assets/images/aprovado.png",),


                          width: 50,
                          height: 50,
                        ),
                      ),
                    ],
                  )
                ),
              ),
              Align(

                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  alignment: Alignment.topCenter,
                  height: 60.0,
                 // color: Colors.blue,

                  child: Stack(

                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Icon(Icons.check_circle, size: 10,),
                            Text("Selo de aprovação Prettify",style: TextStyle(fontSize: 10, ),textAlign: TextAlign.left,),
                          ],
                        ),
                      ), Align(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Text("Rodrigo Manicure", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),Align(
                        alignment: Alignment.bottomLeft,
                        child: Row(
                          children: [
                            Text("Rua manca, n13 - 13060-766, Campinas-SP",style: TextStyle(fontSize: 10, )),
                          ],
                        ),
                      ),
                      // Row(
                      //   children: [
                      //     Text("Selo de aprovação Prettify",style: TextStyle(fontSize: 8, ),textAlign: TextAlign.left,),
                      //   ],
                      // ),
                      // Row(
                      //   children: [
                      //     Text("Barbearia do Samuel", style: TextStyle(fontSize: 8, )),
                      //   ],
                      // ),
                      // Row(
                      //   children: [
                      //     Text("Rua manca, n13 - 13060-766, Campinas_SP",style: TextStyle(fontSize: 8, )),
                      //   ],
                      // ),



                    ],
                  ),
                ),
              ),

            ],
          )),
    );
  }
}
