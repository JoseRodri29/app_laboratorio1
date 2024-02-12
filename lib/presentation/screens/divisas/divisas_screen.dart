import 'package:flutter/material.dart';

class Divisas{
  double dolar = 24.61;
  double euro = 26.57;
  double resultado = 0.00;

  double generarDolar(double lempiras){
    return resultado = lempiras * dolar;
  }

  double generarEuro(double lempiras){
    return resultado = lempiras * euro;
  }
}