import 'dart:io';

calculaImc() {
  print(" === Digite seu peso === ");
  String textPeso = stdin.readLineSync();
  int peso = int.parse(textPeso);

  print(" === Digite sua Altura === ");
  String textAltura = stdin.readLineSync();
  double altura = double.parse(textAltura);

  double imc = calcImc(peso, altura);
  imprimeResultado(imc);
}

//função que recebe os parametros e retorna o imc
double calcImc(int peso, double altura) {
  return peso / (altura * altura);
}

//imprime o resultado baseado no imc passado por parametros
imprimeResultado(double imc) {
  print(" ============= ");

  print(imc);
  if (imc < 18.5) {
    print("Abaixo do peso");
  } else if (imc > 18.5 && imc < 24.9) {
    print("Peso normal");
  } else if (imc > 25 && imc < 29.9) {
    print("Sobrepeso");
  } else if (imc > 30 && imc < 34.9) {
    print("Obesidade grau 1");
  } else if (imc > 35 && imc < 39.9) {
    print("Obesidade grau 2");
  } else {
    print("Obesidade grau 3");
  }
}
