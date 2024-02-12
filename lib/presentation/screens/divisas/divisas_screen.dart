class Divisas{
  double dolar = 24.61;
  double euro = 26.57;
  double resultado = 0.00;

  void generarDolar(double lempiras){
    resultado = lempiras * dolar;
  }

  void generarEuro(double lempiras){
    resultado = lempiras * euro;
  }
}