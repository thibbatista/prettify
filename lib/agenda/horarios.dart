import 'package:flutter/material.dart';

class Teste extends StatefulWidget {
  @override
  _TesteState createState() => _TesteState();
}

class _TesteState extends State<Teste> {
  List lista = [];
  List horarios = [];

  String getTimeStringFromDouble(double value) {
    if (value < 0) return 'Invalid Value';
    int flooredValue = value.floor();
    double decimalValue = value - flooredValue;
    String hourValue = getHourString(flooredValue);
    String minuteString = getMinuteString(decimalValue);

    return '$hourValue:$minuteString';
  }

  String getMinuteString(double decimalValue) {
    return ((decimalValue * 0.6) * 100).toStringAsFixed(0).padLeft(2, '0');

    // double result = decimalValue * 60;
    // String resultString = result.toStringAsFixed(0);
    // double resulInt = double.parse(resultString);
    // return '${(resulInt*60).toInt()}'.padLeft(2,'0');
  }

  String getHourString(int flooredValue) {
    return '${flooredValue % 24}'.padLeft(2, '0');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    valor();
  }

  void valor() {
    int valor = 10;
    int hora = 420;


    for (var i = 0; i < valor; i++) {
      hora += 10;
      lista.add(hora);
    }
    for (var x in lista) {
      double h = x / 60 as double;
      horarios.add(getTimeStringFromDouble(h));
      // print(getTimeStringFromDouble(h));


    }
  }


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //mainAxisExtent: 10.0,
            crossAxisCount: 4,
            childAspectRatio: 5 / 2,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0,

        ),
        itemCount:horarios.length ,
        itemBuilder: (BuildContext context, int index){
          return Container(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(

              onPressed: (){},

              child: Text(horarios[index].toString()),


            ),
          );
        },


    );
    // return ListView.builder(
    //   itemCount: horarios.length,
    //   itemBuilder: (BuildContext context, int index){
    //     return ElevatedButton(onPressed: (){
    //       print(horarios[index].toString());
    //     },
    //         child: Text(horarios[index].toString())
    //     );
    //   },
    //
    // );
  }
}


class ButtomHora extends StatelessWidget {
  String text;
  List lista;
  ElevatedButton elevatedButton;

  ButtomHora(this.text, this.lista, this.elevatedButton);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget? criaBotao(String textBuild, List listaBuild,
      ElevatedButton buttonBuild) {
    return null;
  }
}
