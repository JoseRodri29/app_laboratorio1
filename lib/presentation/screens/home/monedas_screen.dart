import 'package:flutter/material.dart';
import 'package:flutter_laboratorio_1/presentation/screens/divisas/divisas_screen.dart';

class CambioMonedaPage extends StatefulWidget{
  CambioMonedaPage ({Key? key}) : super(key: key);

  @override
  _CambioMonedaPage createState() => _CambioMonedaPage();
}

class _CambioMonedaPage extends State<CambioMonedaPage>{

  Divisas Cambio = new Divisas();

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
      body: Center(
        
        ),
    );
  }


}