import 'dart:io';

main() {
  calculoImc();
}

// Programa que calcula o imc
calculoImc() {
  print("=== Digite seu peso ===");
  int peso = int.parse(stdin.readLineSync() ?? '0');

  print("=== Digite sua altura ===");
  var altura = double.parse(stdin.readLineSync() ?? '0');

  var imc = peso / (altura * altura);

  imprimirResultado(imc);
}

// imprime o resultado baseado no imc passado por parâmetro
imprimirResultado(imc) {
  print("===================");
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
