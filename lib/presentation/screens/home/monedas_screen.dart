import 'package:flutter/material.dart';
import 'package:flutter_laboratorio_1/presentation/screens/divisas/divisas_screen.dart';

class CambioMonedaPage extends StatefulWidget{
  CambioMonedaPage ({Key? key}) : super(key: key);

  @override
  _CambioMonedaPage createState() => _CambioMonedaPage();
}

class _CambioMonedaPage extends State<CambioMonedaPage>{

  Divisas Cambio = new Divisas();
  final num = TextEditingController();
  double dato = 0.00;

  double resultadoDolar = 0.00;
  double resultadoEuro = 0.00;

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Clases"),
      ),
      body: Cuerpo()
    );
  }

Widget Cuerpo(){
  return Container(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Cambio de Divisas"),
          lempiraText(),
          botonCalcular(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Dólar: " + resultadoDolar.toString()),
              Text("Euro: " + resultadoEuro.toString()),
            ]
          )
        ],
      )
    ),
  );
}

  Widget lempiraText(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
    child: TextField(
      controller: num,
      decoration: InputDecoration(
        hintText: "Ingrese Lempiras",
        fillColor: Colors.white,
        filled: true
      ),
    ),
  );
}

  Widget botonCalcular(){
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
    child: TextButton(
      style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
      backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
      onPressed:(){
        dato = double.parse(num.text);
        resultadoDolar = Cambio.generarDolar(dato);
        resultadoEuro = Cambio.generarEuro(dato);     
        setState(() {});
      },
      child: Text("Calcular Divisas", style: TextStyle(fontSize: 15))
    ),
  );
}


}